module Main exposing (..)

import Browser
import Html exposing (Html, ul, div, text, input)
import Html.Attributes exposing (type_)
import List exposing (filter, map)

import Model exposing (Model)
import Message exposing (Msg)
import Update exposing (..)
import Component.TaskComponent exposing (taskComponent)
import Html.Events exposing (onClick)
import Message exposing (Msg(..))


init : ( Model, Cmd Msg )
init =
  ( {
    tasks = [{
      title = "Title"
      , completed = True
    }, {
      title = "Not completed"
      , completed = False
    }]
    , showCompleted = False
  }, Cmd.none )

view : Model -> Html Msg
view model =
  div [] [
    text "Show completed"
    , input [ type_ "checkbox", onClick ToggleShowCompleted ] []
    ,ul [] <|
      map taskComponent (filter (\t -> t.completed == model.showCompleted) model.tasks)
  ]


---- PROGRAM ----
main : Program () Model Msg
main =
  Browser.element
    { view = view
    , init = \_ -> init
    , update = update
    , subscriptions = always Sub.none
    }
