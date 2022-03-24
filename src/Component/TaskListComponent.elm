module Component.TaskListComponent exposing (..)
import Html exposing (Html, ul)
import Html.Attributes exposing (class)

import List exposing (map, filter)
import Component.TaskComponent exposing (taskComponent, Task)

import Message exposing (..)

taskListComponent : Bool -> List Task -> Html Msg
taskListComponent showCompleted tasks =
  ul [ class "task-list" ] <|
    map taskComponent (filter (\t -> t.completed == showCompleted) tasks)
