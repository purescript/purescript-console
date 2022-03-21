module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Class.Console as Console

main :: Effect Unit
main = do
  Console.log "log"
  Console.warn "warn"
  Console.error "error"
  Console.info "info"
  Console.debug "debug"
