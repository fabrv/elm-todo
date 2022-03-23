module Pages.HomePage exposing (..)
import Model exposing (Model)
import Html exposing (Html, div, text, input)
import Html.Attributes exposing (type_)
import Html.Events exposing (onClick)
import Message exposing (..)
import Component.TaskListComponent exposing (taskListComponent)

homePage : Model -> Html Msg
homePage model =
  div [] [
    text "Show completed"
    , input [ type_ "checkbox", onClick ToggleShowCompleted ] []
    , taskListComponent model.showCompleted model.tasks
  ]