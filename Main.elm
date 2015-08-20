import Box exposing (Cell, update, view)
import StartApp.Simple exposing (start)

main =
  start { model = Box.Player2, update = update, view = view }
