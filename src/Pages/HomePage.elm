module Pages.HomePage exposing (..)
import Model exposing (Model)
import Html exposing (Html, div, text, input)
import Html.Attributes exposing (type_)
import Html.Events exposing (onClick)
import Message exposing (..)
import Component.TaskListComponent exposing (taskListComponent)

import Component.AddTaskComponent
import Html.Attributes exposing (class)

homePage : Model -> Html Msg
homePage model =
  div [ class "homePage" ] [
    Component.AddTaskComponent.view model
    , text "Show Completed"
    , input [ type_ "checkbox", onClick ToggleShowCompleted ] []
    , taskListComponent model.showCompleted model.tasks
  ]