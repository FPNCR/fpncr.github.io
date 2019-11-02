module Main where

import Prelude

import Concur.React.Run (runWidgetInDom)
import Effect (Effect)
import Pages.Home as Home

main :: Effect Unit
main = do
  runWidgetInDom "main" Home.page
