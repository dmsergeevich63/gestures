# gestures
Это скрипт написанный на lua для Logitech G hub. Он позволяет значительно расширить функциональность дополнительных кнопок вашей мыши, за счёт того, что назначенное действие выполняется только после считывания жеста между нажатием и отпускаем кнопки. То есть на одну кнопку можно назначить до 5 действий. Это проект вдохнавлен Logitech Options - ПО для продуктивной офисной работы на не игровых мышках(M590, MX master). 

 Для использования скрипта требуется отключить кнопки в нужных приложениях, создать макросы для всех действий, которые вы хотите выполнять с помощью жестов и нажатий без движений(для нажатий без жеста надо создавать макросы выполняющиеся только по отжатию кнопки мыши). Ну и конечно надо создать и активировать скрипт для приложения, а в скрипте прописать названия макросов на жесты.
 

Скрип довольно прост и буквально состоит из примера приведенного в начале документации https://douile.github.io/logitech-toggle-keys/APIDocs.pdf , нескольких функций из неё же и функции вычисления в какую  сторону переместилась мышь во время нажатия кнопки. 
C:\Users\XXX\AppData\Local\LGHUB\scripts\8c7627e0-5550-4393-a3bf-b7d2c1e5a1fa
