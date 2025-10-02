check: 
    moon check -d --target js 
    moon info --target js 

fmt-json: 
    fd moon.mod.json -x npx prettier --write {}
    fd moon.pkg.json -x npx prettier --write {}

# https://github.com/sharkdp/fd