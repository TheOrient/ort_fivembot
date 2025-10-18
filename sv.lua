--CREATED BY Orient. Copying, distribution and commercial use are prohibited.
--ORİENT Tarafından yapılmıştır. Kopyalanması, dağıtılması ve ticari amaçlı kullanılması yasaktır.




Config = {}
Config.RP = true
Config.BotToken = "TOKEN"  --Discord Bot Token
Config.WebHook = "https://discord.com/api/webhooks/810479470121058326/IQScE9d3eYJDqO4vi76WcHa-iNBGzg1QRVEDOKFhm6Y7i_xWz0sJoYwIjnr5VbCoSHkx" -- Webhook linki
Config.ChannelID = "809869779539984459" -- Discord kanal id
Config.ReplyUserName = "OrientBOT" -- BOT İSMİ
Config.AvatarURL = "https://media.discordapp.net/attachments/810439569383882763/810479584595935232/pp.png?width=467&height=467" -- PP resim linki
Config.Prefix = "!ort." --PREFİX KOMUT 
Config.WaitEveryTick = 100  



-- nil <3 :D
local sonveri = nil
ESX = nil
if Config.RP then
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end
function DiscordRequest(method, endpoint, jsondata)
    local data = nil
    PerformHttpRequest("https://discordapp.com/api/"..endpoint, function(errorCode, resultData, resultHeaders)
		data = {data=resultData, code=errorCode, headers=resultHeaders}
    end, method, #jsondata > 0 and json.encode(jsondata) or "", {["Content-Type"] = "application/json", ["Authorization"] = "Bot " .. Config.BotToken})

    while data == nil do
        Citizen.Wait(0)
    end
	
    return data
end
Citizen.CreateThread(function()
while true do 
  Citizen.Wait(600000)
end
end)
function string.starts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

function bosluk (inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end
function GetRealPlayerName(playerId)
    if Config.RP then
	local xPlayer = ESX.GetPlayerFromId(playerId)
	return xPlayer.getName()
	else
	return "ESX HENÜZ AKTİFLEŞTİRİLMEMİŞ"
	end
end
function ExecuteCOMM(command)
if string.starts(command,Config.Prefix) then
-- Oyuncu Sayısı Çek
if string.starts(command,Config.Prefix .. "durum") then
  webhookcalistir("Sunucu Durumu","Oyuncu Sayısı : " .. GetNumPlayerIndices(),14221535)
-- Oyuncu Atma
elseif string.starts(command,Config.Prefix .. "kick") then

localyazit = bosluk(command," ")

if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
webhookcalistir("İşlem Başarılı!", "Oyuncu Başarıyla Kicklendi! :  " .. GetPlayerName(yazi[2]),65280)
DropPlayer(yazi[2],"Discord Yetkilisi Tarafından Oyundan Atıldınız! Destek çıkın!")


else

webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)

end




-- Özel İtem Ver
elseif string.starts(command,Config.Prefix .. "itemver") then
	
  if Config.RP then
  
   local yazi = bosluk(command," ", "  ","   ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          

      local xPlayer = ESX.GetPlayerFromId(yazi[2])



      if yazi[4] ~= nil then



      xPlayer.addInventoryItem(yazi[3], yazi[4])
         



          webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi :  " .. GetPlayerName(yazi[2]) ,65280)



        else 


          webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar İtem Vericeğinizi Belirtin!",16711680)
    
    
          end


   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
    
   end
   
  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end





-- Oyuncu Öldürme

elseif string.starts(command,Config.Prefix .. "öldür") then

  local yazi = bosluk(command," ")

  if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then

  TriggerClientEvent("oldur",yazi[2])
  webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi :  " .. GetPlayerName(yazi[2]),65280)


  else

   webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)


  end

elseif string.starts(command,Config.Prefix .. "can") then

  local yazi = bosluk(command," ")

  if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then

  TriggerClientEvent("can",yazi[2])
  webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi :  " .. GetPlayerName(yazi[2]),65280)


  else

   webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)


  end

elseif string.starts(command,Config.Prefix .. "wlyenile") then

  local yazi = bosluk(command," ")

  if yazi[2] ~= nil then

    ExecuteCommand("wlyenile")
  webhookcalistir("İşlem Başarılı!",65280)


  else

   webhookcalistir("İşlem Başarısız!","Birşey girin",16711680)


  end
  

  



  -- Meslek Ver
elseif string.starts(command,Config.Prefix .. "meslekver") then
	
  if Config.RP then
  
    local yazi = bosluk(command," ", "  ", "   ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          

      local xPlayer = ESX.GetPlayerFromId(yazi[2])



      xPlayer.setJob(yazi[3], yazi[4])



          webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi :  " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
    
   end
   
  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end


-- Duyuru
elseif string.starts(command,Config.Prefix .. "restartduyuru") then
	
	if Config.RP then
	

      TriggerClientEvent("announce", -1, "Sunucuya Restart Atılacaktır! Lütfen Sunucudan Çıkış Yapalım")
          webhookcalistir("İşlem Başarılı!", "Duyuru atıldı!",65280)
   
	  
	 end




    -- Para Ver
  elseif string.starts(command,Config.Prefix .. "paraver") then
	
    if Config.RP then
    
      local yazi = bosluk(command," ", "  ")
       if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
            

        if yazi[3] ~= nil then



        local xPlayer = ESX.GetPlayerFromId(yazi[2])



            xPlayer.addMoney(yazi[3])



            webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi :  " .. GetPlayerName(yazi[2]),65280)


          else 


            webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar Para Vericeğinizi Belirtin!",16711680)
      
      
            end

     
       else
     
        webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
      
     end
     
    else
     
      webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
     
      end








-- Kelepçe
elseif string.starts(command,Config.Prefix .. "kelepçe") then
	
	if Config.RP then
	
	 local yazi = bosluk(command," ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          TriggerClientEvent("esx_policejob:handcuff",yazi[2])   


          
          webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi :  " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
	  
	 end
	 
	else
	 
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
	 
    end




-- Dondur
elseif string.starts(command,Config.Prefix .. "dondur") then
	
	if Config.RP then
	
	 local yazi = bosluk(command," ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          TriggerClientEvent("freeze:freezePlayer",yazi[2])   


          
          webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi :  " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
	  
	 end
	 
	else
	 
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
	 
    end







    
-- Don Çöz
elseif string.starts(command,Config.Prefix .. "çöz") then
	
	if Config.RP then
	
	 local yazi = bosluk(command," ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          TriggerClientEvent("freeze:notfreeze",yazi[2])   


          
          webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi :  " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
	  
	 end
	 
	else
	 
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
	 
    end

    
		 
  elseif string.starts(command,Config.Prefix .. "ss") then
	
    if Config.RP then
    
     local yazi = bosluk(command," ")
       if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
        local target = yazi[2]
        TriggerClientEvent('ml_admin_server:captureScreenshot', target, GetPlayerName(yazi[2]), yazi[2]) 
        
            webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi :  " .. GetPlayerName(yazi[2]),65280)
   
          else
        
           webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
         
        end
        
       else
        
         webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
        
         end
  

-- Rev Menü
    elseif string.starts(command,Config.Prefix .. "rev") then
	
	if Config.RP then
	
	 local yazi = bosluk(command," ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          TriggerClientEvent("esx_ambulancejob:revsik",yazi[2])   
          webhookcalistir("İşlem Başarılı!", "Oyuncu İsmi : " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
	  
	 end
	 
	else
	 
	 webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
	 
    end


     end
     
  end
	 
end




Citizen.CreateThread(function()

   PerformHttpRequest(Config.WebHook, function(err, text, headers) end, 'POST', json.encode({username = Config.ReplyUserName, content = "Bot başlatıldı.", avatar_url = Config.AvatarURL}), { ['Content-Type'] = 'application/json' })
   while true do   


	local kanal = DiscordRequest("GET","channels/" .. Config.ChannelID,{})
if kanal.data then
	local data = json.decode(kanal.data)
	local lst = data.last_message_id
	local sonmesaj = DiscordRequest("GET","channels/" .. Config.ChannelID .. "/messages/" .. lst,{})
     if sonmesaj.data then
	local sndata = json.decode(sonmesaj.data)
	if sonveri == nil then	 
	sonveri = sndata.id
	end

	if sonveri ~= sndata.id and sndata.author.username ~= Config.ReplyUserName then
	
	
	ExecuteCOMM(sndata.content)
	sonveri = sndata.id

	
	end
    end
end
	Citizen.Wait(Config.WaitEveryTick)
	end
end)


function webhookcalistir(name, message, color)
  local connect = {
        {
            ["color"] = color,
            ['author'] = {
              ['name'] = 'Orient Game Bot',
              ['icon_url'] = 'https://media.discordapp.net/attachments/795349438851842051/796455672413290557/logo.png?width=467&height=467'
            },
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ['timestamp'] = os.date('!%Y-%m-%dT%H:%M:%SZ'),
            ["footer"] = {
                ["text"] = "dev. by Orient ",
            },
        }
    }
  PerformHttpRequest(Config.WebHook, function(err, text, headers) end, 'POST', json.encode({username = Config.ReplyUserName, embeds = connect, avatar_url = Config.AvatarURL}), { ['Content-Type'] = 'application/json' })
end
