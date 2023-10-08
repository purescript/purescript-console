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
  Console.group "group"
  Console.log "log in group"
  Console.groupCollapsed "groupCollapsed"
  Console.log "log in groupCollapsed"
  Console.groupEnd
  Console.groupEnd
  Console.grouped "grouped" do 
    Console.log "log in grouped"
