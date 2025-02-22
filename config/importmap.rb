pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"

pin "educhain_view_components/application"
pin_all_from Educhain::ViewComponents::Engine.root.join("app/javascript/educhain_view_components/controllers"), under: "educhain_view_components/controllers"