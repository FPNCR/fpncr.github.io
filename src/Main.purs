module Main where

import Prelude

import Pages.Home as Home
import Concur.React.Run (runWidgetInDom)
import Effect (Effect)

main :: Effect Unit
main = runWidgetInDom "main" Home.page
