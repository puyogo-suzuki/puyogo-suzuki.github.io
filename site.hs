--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
--------------------------------------------------------------------------------

config :: Configuration
config = defaultConfiguration { destinationDirectory = "docs"}

main :: IO ()
main = hakyllWith config $ do
    enpoststags <- buildTags "en/posts/*" (fromCapture "en/posts/tag/*.html")
    enhobbytags <- buildTags "en/hobbies/*" (fromCapture "en/hobbies/tag/*.html")
    japoststags <- buildTags "ja/posts/*" (fromCapture "ja/posts/tag/*.html")
    jahobbytags <- buildTags "ja/hobbies/*" (fromCapture "ja/hobbies/tag/*.html")
    match "ja/images/**" $ do
        route   idRoute
        compile copyFileCompiler
    match "en/images/**" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match (fromList ["en/about.rst", "en/cvs.rst"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/en/default.html" defaultContext
            >>= relativizeUrls

    match (fromList ["ja/about.rst", "ja/cvs.rst"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/ja/default.html" defaultContext
            >>= relativizeUrls

    match "en/hobbies/*" (hobbyCompiler enhobbytags "en")
    match "ja/hobbies/*" (hobbyCompiler jahobbytags "ja")

    match "en/posts/*" (postCompiler enpoststags "en")
    match "ja/posts/*" (postCompiler japoststags "ja")

    create ["en/hobbies.html"] (hobbiesCompiler "en")
    create ["ja/hobbies.html"] (hobbiesCompiler "ja")

    create ["en/posts.html"] (postsCompiler "en")
    create ["ja/posts.html"] (postsCompiler "ja")

    match "index.html" $ do
        route idRoute
        compile $ do
            postsen <- recentFirst =<< loadAll "en/posts/*"
            postsja <- recentFirst =<< loadAll "ja/posts/*"
            let indexCtx =
                    listField "postsen" postCtx2 (return postsen) `mappend`
                    listField "postsja" postCtx2 (return postsja) `mappend`
                    defaultContext

            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/en/default.html" indexCtx
                >>= relativizeUrls

    match "index-ja.html" $ do
        route idRoute
        compile $ do
            postsen <- recentFirst =<< loadAll "en/posts/*"
            postsja <- recentFirst =<< loadAll "ja/posts/*"
            let indexCtx =
                    listField "postsen" postCtx2 (return postsen) `mappend`
                    listField "postsja" postCtx2 (return postsja) `mappend`
                    defaultContext

            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/ja/default.html" indexCtx
                >>= relativizeUrls

    match "templates/**" $ compile templateBodyCompiler

    tagsRules enpoststags (tagsPCompiler enpoststags "en")
    tagsRules enhobbytags (tagsHCompiler enhobbytags "en")
    tagsRules japoststags (tagsPCompiler japoststags "ja")
    tagsRules jahobbytags (tagsHCompiler jahobbytags "ja")

--------------------------------------------------------------------------------

postCtx :: Tags -> Context String
postCtx tags =
    dateField "date" "%Y-%m-%d" `mappend`
    tagsFieldWith getTags simpleRenderLink mconcat "tags" tags `mappend`
    defaultContext

postCtx2 :: Context String
postCtx2 =
    dateField "date" "%Y-%m-%d" `mappend`
    defaultContext

postCompiler :: Tags -> String -> Rules ()
postCompiler t lng = do
    route $ setExtension "html"
    compile $ pandocCompiler
        >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/hobby.html"))   (postCtx  t)
        >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/default.html")) (postCtx t)
        >>= relativizeUrls

hobbyCompiler :: Tags -> String -> Rules ()
hobbyCompiler t lng = do
    route $ setExtension "html"
    compile $ pandocCompiler
        >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/hobby.html"))   (postCtx t)
        >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/default.html")) (postCtx t)
        >>= relativizeUrls

hobbiesCompiler :: String -> Rules ()
hobbiesCompiler lng = do
    route idRoute
    compile $ do
        posts <- recentFirst =<< loadAll ( fromGlob  (lng++"/hobbies/*"))
        let archiveCtx =
                listField "posts" postCtx2 (return posts)                                    `mappend`
                constField "title" (if lng == "ja" then "作ったもの" else "Hobby Projects") `mappend`
                defaultContext

        makeItem ""
            >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/hobbies.html"))   archiveCtx
            >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/default.html")) archiveCtx
            >>= relativizeUrls

postsCompiler :: String -> Rules ()
postsCompiler lng = do
    route idRoute
    compile $ do
        posts <- recentFirst =<< loadAll ( fromGlob  (lng++"/posts/*"))
        let archiveCtx =
                listField "posts" postCtx2 (return posts)                     `mappend`
                constField "title" (if lng == "ja" then "投稿" else "Posts") `mappend`
                defaultContext

        makeItem ""
            >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/posts.html"))   archiveCtx
            >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/default.html")) archiveCtx
            >>= relativizeUrls

tagsPCompiler :: Tags -> String -> String -> Pattern -> Rules ()
tagsPCompiler tags lng tag pattern = do
    let title = if lng == "ja" then tag ++ "でタグ付けされた投稿" else "Hobby Projects tagged \"" ++ tag ++ "\""
    route idRoute
    compile $ do
        posts <- recentFirst =<< loadAll pattern
        let ctx = constField "title" title `mappend`
                listField "posts" postCtx2 (return posts) `mappend`
                defaultContext

        makeItem ""
            >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/poststag.html")) ctx
            >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/default.html")) ctx
            >>= relativizeUrls

tagsHCompiler :: Tags -> String -> String -> Pattern -> Rules ()
tagsHCompiler tags lng tag pattern = do
    let title = if lng == "ja" then tag ++ "でタグ付けされた作ったもの" else "Hobby Projects tagged \"" ++ tag ++ "\""
    route idRoute
    compile $ do
        posts <- recentFirst =<< loadAll pattern
        let ctx = constField "title" title `mappend`
                listField "posts" postCtx2 (return posts) `mappend`
                defaultContext

        makeItem ""
            >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/hobbiestag.html")) ctx
            >>= loadAndApplyTemplate (fromFilePath ("templates/"++lng++"/default.html")) ctx
            >>= relativizeUrls