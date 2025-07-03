pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "stimulus-use", to: "https://ga.jspm.io/npm:stimulus-use@0.52.0/dist/index.js"
pin "@hotwired/turbo-rails", to: "turbo.js"

pin "sortablejs", to: "https://cdn.jsdelivr.net/npm/sortablejs@1.15.0/+esm"
pin "@rails/request.js", to: "https://cdn.jsdelivr.net/npm/@rails/request.js@0.0.9/+esm"

pin "educhain_view_components/application", preload: true
pin "educhain_view_components/utils"
pin "educhain_view_components/web_components/educhain_select"

pin "educhain_view_components/tom-select", to: "educhain_view_components/tom-select/tom-select.js"
pin "educhain_view_components/tom-select/plugins/patch_scroll"
pin "educhain_view_components/tom-select/plugins/remote_with_pagination"
pin "educhain_view_components/tom-select/plugins/stash_on_search"

pin_all_from Educhain::ViewComponents::Engine.root.join("app/javascript/educhain_view_components/controllers"), under: "educhain_view_components/controllers"
pin_all_from Educhain::ViewComponents::Engine.root.join("app/components")
#pin_all_from Educhain::ViewComponents::Engine.root.join("app/javascript/educhain_view_components/tom-select/plugins"), under: "plugins"

#pin_all_from Educhain::ViewComponents::Engine.root.join("app/javascript/educhain_view_components/web_components"), under: "educhain_view_components/web_components"

pin "tom-select", to: "https://ga.jspm.io/npm:tom-select@2.4.3/dist/esm/tom-select.complete.js"
pin "@orchidjs/sifter", to: "https://ga.jspm.io/npm:@orchidjs/sifter@1.1.0/dist/esm/sifter.js"
pin "@orchidjs/unicode-variants", to: "https://ga.jspm.io/npm:@orchidjs/unicode-variants@1.1.2/dist/esm/index.js"
