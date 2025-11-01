-- чтобы этот модуль сработал нужно просто прописать require, без tg = require.... Например 'require 'Modules.telegram'
tg = {}
tg.log = function(text, id)
    -- id это айди чата. Его можно достать через @MyIdBot
    local token = 'твой токен телеграм бота, можно достать через @BotFather'
    local url = "https://api.telegram.org/bot" .. token ..  "/sendMessage"
    -- ссылка для отправления сообщения. Чтобы всё было нормально, сначала напиши своему боту первым
    local headers = {
    ["Content-Type"] = "application/x-www-form-urlencoded"
    }
    local body = "chat_id=" .. id .. "&text=" .. text
    local params = {headers = headers, body = body}
    -- params, body и headers менять не надо
    network.request(url, 'POST', function() end, params)
    -- POST запрос для отправки сообщения
    end
-- Автор: Авен Снимок