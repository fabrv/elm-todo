module Component.TaskListComponent exposing (..)
import Message exposing (Msg)
import Html exposing (Html, ul)
import List exposing (map, filter)
import Component.TaskComponent exposing (taskComponent, Task)

taskListComponent : Bool -> List Task -> Html Msg
taskListComponent showCompleted tasks = 
  ul [] <|
    map taskComponent (filter (\t -> t.completed == showCompleted) tasks)
