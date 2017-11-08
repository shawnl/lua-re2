package = "re2"
version = "2015-0"
source = {
   url = "https://github.com/cloudflare/lua-re2"
}
description = {
   summary = "RE2's C and Lua interface .",
   detailed = [[
      C and Lua wrapper for RE2 regular expression
      library. The Lua wrapper is built on top of C wrapper.
   ]],
   homepage = "https://github.com/cloudflare/lua-re2",
   license = "BSD-3"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "make",
   build_variables = {
      LUA="$(LUA)",
   },
   install_variables = {
      LIB_TARGET_DIR="$(LIBDIR)",
      LUA_TARGET_DIR="$(LUADIR)",
   },
   external_dependencies = {
      LIBRE2 = {
         header = "re2/re2.h"
      }
   }
}

