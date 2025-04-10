class Educhain::FooterComponentPreview < ViewComponent::Preview
  ITEMS = [
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
  Items = Struct.new(:width, :key, :links)

  def overview(
    logo_path: "educhain/view_components/educhain_fat_type.svg",
    width: "w-13/52",
    text: "Проектные (техноэкономические) технологии и платформы кадрового суверенитета",
    copyright: "Copyright ©	2024 Educhain | All Right Reserved"
  )
    render_with_template(
      locals: {
        copyright:,
        text:,
        width:,
        path: logo_path,
        items: ITEMS.map { Items.new(**_1) } }
    )
  end
end
