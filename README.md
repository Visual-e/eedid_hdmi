# eedid_hdmi
Эмуляция EDID информации HDMI интерфейса на FPGA.

https://visuale.ru/blog/emulyatsiya-edid-informatsii-hdmi-interfejsa-na-fpga

Видно, что по HDMI, помимо видео потока (TMDS channel 0/1/2/clk), передаются еще и данные по интерфейсам DDC и CEC, последний нас пока интересовать не будет. DDC есть не что иное как интерфейс I2C, только без мультимастера, мастер только один — источник видео сигнала. Основной информацией передаваемой по DDC, для случая не защищенного HDCP HDMI канала, является EDID — «это стандарт формата данных VESA, который содержит базовую информацию о мониторе и его возможностях, включая информацию о производителе, максимальном размере изображения...». Да и еще одна маленькая, но важная особенность: без получения «нормального» EDID, источник сигнала не активизирует передачу видео сигналов по TMDS. По итогу имеем следующее: приемником HDMI является FPGA которая и знать не знает что такое I2C, EDID, DDC, а без нормального EDID, честных сигналов TMDS от видеокарты не видать «как своих ушей».