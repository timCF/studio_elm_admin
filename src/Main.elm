import Html

-- MODEL

type alias State =
    {
      login : String,
      password : String
    }


initialState : State
initialState =
    {
      login = "",
      password = ""
    }

main = Html.text "Hello World"
