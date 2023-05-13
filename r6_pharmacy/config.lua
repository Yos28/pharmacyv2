Config = {}

Config.CoreObj = "QBCore" -- لاتغيرة
Config.Core = "qb-core" -- غيرة لكور ملفاتك 

--- exports & Events

Config.InvTrigger = 'inventory:server:OpenInventory' -- لا تلمسه


----------------------------------------------

-- target 
Config.TargetExport = "qb-target" --- غيرة لملف التارقيت حق ملفاتك
Config.Ped1 = "s_m_m_doctor_01" -- سكن البوت
Config.Distance = 2. -- لاتلمسه





----------------------------------------------

-- Peds

Config.Ped2 = "s_m_m_doctor_01" -- سكن البوت
Config.Location = vector4(375.22, -829.6, 28.29, 270.42) -- مكان البوت




Config.pharmacyshop = {
  [1] = {
    name = "painkillers",
    price = 50,
    amount = 5,
    info = {},
    type = "item",
    slot = 1,
  },
  [2] = {
    name = "bandage",
    price = 50,
    amount = 5,
    info = {},
    type = "item",
    slot = 2,
  },

}
