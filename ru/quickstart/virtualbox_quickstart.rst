:Автор: OSGeo-Live
:Автор: Cameron Shorter
:Лицензия: osgeo-live4.0
:Лицензия: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Начало работы с OSGeo-Live в VirtualBox
********************************************************************************

Описание метода запуска OSGeo-Live DVD или ISO в виртуальной машине `VirtualBox <http://www.virtualbox.org/>`_.

VirtualBox является виртуальной машиной с открытым исходным кодом, которая используется большим количеством разработчиков и тестеров OSGeo-Live.

Системные требования
--------------------------------------------------------------------------------

* ОЗУ: 1 Гб; рекомендуется 2 Гб, если вы планируете запускать другие приложения 
* Свободное место на жестком диске:

 * |osgeo-live-hdspace| если запускаете ISO-образ
 * 17 Гб при установке с ISO-образа

Создание виртуальной машины
--------------------------------------------------------------------------------
Загрузите и установите `Virtual Box <http://www.virtualbox.org/>`_. В дистрибутиве Linux, основанном на Debian, выполните:

  ``apt-get install virtualbox-ose``

Откройте VirtualBox 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Выберите :guilabel:`New` для создания новой виртуальной машины.

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Нажмите :guilabel:`Next`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Задайте имя виртуальной машины, выберите тип "Linux", "Ubuntu".

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Установите объём выделяемой оперативной памяти (минимум 768 Мб), 1 Гб для лучшей работы Java-приложений.

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Простая установка: удалите "Boot Hard Disk", виртуальная машина будет всегда 
загружаться с виртуального DVD-привода.

Для сохранения состояния сессий и настроек виртуальной машины 
включите и установите виртуальный жёсткий диск.

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Нажмите :guilabel:`Continue`

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Нажмите :guilabel:`Finish`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

Всё, создание виртуального жёсткого диска завершено. Теперь нужно создать виртуальный привод с 
OSGeo-Live DVD в нём.

Щёлкните правой кнопкой мыши на образе "osgeo-live" и выберите :guilabel:`Settings`.

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Выберите "Storage", CD/DVD Device, ...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Выберите образ OSGeo-Live.

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Теперь вы можете запустить виртуальную машину в соответствии с :doc:`osgeolive_quickstart`

Создание постоянной виртуальной машины
--------------------------------------------------------------------------------
Если вы планируете использовать OSGeo-Live DVD постоянно, то установите его в виртуальную машину, как описано
здесь: :doc:`osgeolive_install_quickstart`.

Увеличение разрешения экрана
--------------------------------------------------------------------------------
Вы можете установить дополнительные инструменты, которые поддерживают большее разрешение экрана, 
функцию копирования и вставки между гостевой и хост-системами, графическое ускорение
и другое.

Убедитесь, что ваш компьютер подключён к сети Интернет.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

Выберите приложение для управления пакетами *Synaptic*.

Введите пораль = "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Отметьте "virtualbox-ose-guest-utils" для установки.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Примените изменения.

Перезагрузите виртуальную машину. Настройки экрана виртуальной машины станут такими же, как и у  
физической машины. Они могут быть изменены:

Выберите: :menuselection:`Applications --> Settings --> Xfce 4 Settings Manager --> Display`

См. также:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

