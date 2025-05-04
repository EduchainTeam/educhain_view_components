module Educhain::ViewComponents
  class Configuration
    def footer_items
      footer_items_struct = Struct.new(:width, :key, :links)
      footer_items ||= [
        {
          width: "w-9/52",
          key: "Решения",
          links: [
            {
              name: "Платформа ДПО",
              path: "#"
            },
            {
              name: "Сетевое Взаимодействие",
              path: "#"
            },
            {
              name: "Платформа УПК",
              path: "#"
            }
          ]
        },
        {
          width: "w-11/52",
          key: "Продукты и услуги",
          links: [
            {
              name: "Конструктор программ",
              path: "#"
            },
            {
              name: "СДО Канвас+",
              path: "#"
            },
            {
              name: "Получение лицензии",
              path: "#"
            }
          ]
        },
        {
          width: "w-12/52",
          key: "Документы",
          links: [
            {
              name: "Политика конфиденциальности",
              path: "#"
            },
            {
              name: "Пользовательское соглашение",
              path: "#"
            },
            {
              name: "Руководство пользователя",
              path: "#"
            }
          ]
        },
        {
          width: "w-7/52",
          key: "Educhain",
          links: [
            {
              name: "O Educhain",
              path: "#"
            },
            {
              name: "Блог",
              path: "#"
            },
            {
              name: "Контакты",
              path: "#"
            }
          ]
        }
      ]
      @footer_items ||= footer_items.map { footer_items_struct.new(**_1) }
    end
  end
end
# SolidusAdmin::Config = SolidusAdmin::Configuration.new
# Educhain::ViewComponents::Config = Educhain::ViewComponents::Configuration.new
