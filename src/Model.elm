module Model exposing (..)
import Component.TaskComponent exposing (Task)

type alias Model =
  { tasks : List Task
  , showCompleted : Bool
  , todoInput: String
  }