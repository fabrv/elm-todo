module Message exposing (..)

type Msg
  = NoOp
  | ToggleShowCompleted
  | OnInputChange String
  | OnAddTask String
  | CompleteTask String
  | DeleteTask String
