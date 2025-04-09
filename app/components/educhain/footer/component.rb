# frozen_string_literal: true

class Educhain::Footer::Component < Educhain::BaseComponent
  attr_reader :items

  def initialize(
    items: [
      {
        width: "w-9/52",
        key: "Решения",
        path: "#",
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
        path: "#",
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
        path: "#",
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
        path: "#",
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
  )
    @items = items.map do |attrs|
      links = attrs[:links].map do |link|
        Link.new(**link)
      end
      BlockItem.new(**attrs, links:)
    end
  end

  class BlockItem
    attr_reader :width, :key, :path, :links
    def initialize(width:, key:, path:, links: [])
      @width = width
      @key = key
      @path = path
      @links = links
    end
  end

  class Link
    attr_reader :name, :path
    def initialize(name:, path:)
      @name = name
      @path = path
    end
  end
end
