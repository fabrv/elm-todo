module Main exposing (..)

import Browser
import Html exposing (Html)

import Model exposing (Model)
import Message exposing (..)
import Update exposing (..)
import Pages.HomePage exposing (homePage)


init : ( Model, Cmd Msg )
init =
  ( {
    tasks = []
    , showCompleted = False
    , todoInput = ""
  }, Cmd.none )

view : Model -> Html Msg
view model = homePage model

main : Program () Model Msg
main =
  Browser.element
    { view = view
    , init = \_ -> init
    , update = update
    , subscriptions = always Sub.none
    }
