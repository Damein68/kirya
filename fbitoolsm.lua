local sf = require 'sampfuncs'
local key = require "vkeys"
local inicfg = require 'inicfg'
require 'lib.sampfuncs'
seshsps = 1

local osnova =
{
  {
    title = "�����������",
    onclick = function()
      local _, myid = sampGetPlayerIdByCharHandle(PLAYER_PED)
      sampSendChat("/r ���������� � ���������� �����������.")
      wait(1500)
      sampSendChat("/rb "..myid)
    end
  },
  {
    title = '�����������',
    onclick = function()
      sampShowDialog(1385, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = '�������',
    onclick = function()
      sampShowDialog(1386, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = '�����',
    onclick = function()
      sampShowDialog(1387, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = '���',
    onclick = function()
      sampShowDialog(1388, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = '�����',
    onclick = function()
      sampShowDialog(1389, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = '���������',
    onclick = function()
      sampShowDialog(1390, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = 'News',
    onclick = function()
      sampShowDialog(1391, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = 'LCN',
    onclick = function()
      sampShowDialog(1392, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = 'Yakuza',
    onclick = function()
      sampShowDialog(1393, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = 'Russian Mafia',
    onclick = function()
      sampShowDialog(1394, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = 'Rifa',
    onclick = function()
      sampShowDialog(1395, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = 'Grove Street',
    onclick = function()
      sampShowDialog(1396, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = 'Ballas',
    onclick = function()
      sampShowDialog(1397, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = 'Vagos',
    onclick = function()
      sampShowDialog(1398, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = 'Aztec',
    onclick = function()
      sampShowDialog(1399, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  },
  {
    title = "�������",
    onclick = function()
      sampShowDialog(1400, '{9966cc}FBI Tools {ffffff}| Mask Reason', '������� �������', '���������', '', 1)
    end
  }
}

local dfmenu =
{
  {
    title = '����� � ������� ����������',
    onclick = function()
      sampSendChat("/me ������ �������� �����")
      wait(3500)
      sampSendChat("/me ������ �������� �����")
      wait(3500)
      sampSendChat("/me �������� �������� ����������")
      wait(3500)
      sampSendChat("/do ��������� ��� ��������� ����������. ����� � ������� ����������.")
      wait(3500)
      sampSendChat("/do ������ ��� ������� ��������� � ���������.")
      wait(3500)
      sampSendChat("/me ������ ��� �� ��������� ������")
      wait(3500)
      sampSendChat("/me ��������� �������� ������ ������")
      wait(3500)
      sampSendChat("/try ������ �������� � ����������� � ��������� ���� �������� � �������� �������")
end
},
{
  title = '����� � ������� ���������� ���� {63c600}[������]',
  onclick = function()
    sampSendChat("/me ��������� ��������")
    wait(3500)
    sampSendChat("/me ����������� � ����������")
    wait(3500)
    sampSendChat("/do �������� �������� �������� �������� �����.")
    wait(3500)
    sampSendChat("/do ����� �����������.")
    wait(3500)
    sampSendChat("/me ������ ����������� ������� � �������� �����")
    wait(3500)
    sampSendChat("/me ������ ������������� ���� � ��������� ������ ���� �����")
  end
},
{
  title = '����� � ������� ���������� ���� {bf0000}[��������]',
  onclick = function()
    sampSendChat("/me ��������� �������� ������ ������")
    wait(3500)
    sampSendChat("/me ��������� ��������")
    wait(3500)
    sampSendChat("/me ����������� � ����������")
    wait(3500)
    sampSendChat("/do �������� �������� �������� �������� �����.")
    wait(3500)
    sampSendChat("/do ����� �����������.")
    wait(3500)
    sampSendChat("/me ������ ����������� ������� � �������� �����")
    wait(3500)
    sampSendChat("/me ������ ������������� ���� � ��������� ������ ���� �����")
  end
},
{
  title = '����� � ������������� �����������',
  onclick = function()
    sampSendChat("/me ������ �������� �����")
    wait(3500)
    sampSendChat("/me ������ �������� �����")
    wait(3500)
    sampSendChat("/me �������� �������� ����������")
    wait(3500)
    sampSendChat("/do ��������� ��� ��������� ����������. ����� � ������� ����������.")
    wait(3500)
    sampSendChat("/do ������ ��� ������ �� ����� � ����������.")
    wait(3500)
    sampSendChat("/me ������ �������� �� ��������� ������")
    wait(3500)
    sampSendChat("/me ��������� ����������� �����")
    wait(3500)
    sampSendChat("/me ��������� ������ ����� � ������ �������")
    wait(3500)
    sampSendChat("/do ������ ������� �������� ���������.")
    wait(3500)
    sampSendChat("/me ���������� ���� ���������� �� ������� � ����������")
    wait(3500)
    sampSendChat("/me ������ ��� �������")
    wait(3500)
    sampSendChat("/try ��������� ������ ������. ��������� �������� ������.")
  end
},
{
  title = '����� � ������������� ����������� ���� {63c600}[������]',
  onclick = function()
    sampSendChat("/do ����� �����������.")
    wait(3500)
    sampSendChat("/me ������ ����������� ������� � �������� �����")
    wait(3500)
    sampSendChat("/me ������ ������������� ���� � ��������� ������ ���� �����")
  end
},
{
  title = '����� � ������������� ����������� ���� {bf0000}[��������]',
  onclick = function()
    sampSendChat("/me ��������� ������ ������")
    wait(3500)
    sampSendChat("/do ��������� �������� ������.")
    wait(3500)
    sampSendChat("/do ����� �����������.")
    wait(3500)
    sampSendChat("/me ������ ����������� ������� � �������� �����")
    wait(3500)
    sampSendChat("/me ������ ������������� ���� � ��������� ������ ���� �����")
  end
},
{
  title = '����� � ������������� �����',
  onclick = function()
    sampSendChat("/me ������ �������� �����")
    wait(3500)
    sampSendChat("/me ������ �������� �����")
    wait(3500)
    sampSendChat("/me �������� �������� ����������")
    wait(3500)
    sampSendChat("/do ��������� ��� ��������� ����������. ����� � ������������� �����.")
    wait(3500)
    sampSendChat("/me ������ �� ��������� ������ ������ ��� ������� ����")
    wait(3500)
    sampSendChat("/me ��������� ������ � �����")
    wait(3500)
    sampSendChat("/do �� ������� �����������: �������� ��������� ������.")
    wait(3500)
    sampSendChat("/do �� ������� �����������: ������ 5326.")
    wait(3500)
    sampSendChat("/try ��� ���������� ������. ����� ����� ����������")
  end
},
{
  title = '����� � ������������� ����� ���� {63c600}[������]',
  onclick = function()
    sampSendChat("/do ����� �����������.")
    wait(3500)
    sampSendChat("/me ������ ����������� ������� � �������� �����")
    wait(3500)
    sampSendChat("/me ������ ������������� ���� � ��������� ������ ���� �����")
  end
},
{
  title = '����� � ������������� ����� ���� {bf0000}[��������]',
  onclick = function()
    sampSendChat("/me ������������(�) ������")
    wait(3500)
    sampSendChat("/do �� ������� �����������: �������� ��������� ������.")
    wait(3500)
    sampSendChat("/do �� ������� �����������: ������ 3789.")
    wait(3500)
    sampSendChat("/me ��� ���������� ������")
    wait(3500)
    sampSendChat("/����� ����� ����������")
    wait(3500)
    sampSendChat("/do ����� �����������.")
    wait(3500)
    sampSendChat("/me ������ ����������� ������� � �������� �����")
    wait(3500)
    sampSendChat("/me ������ ������������� ���� � ��������� ������ ���� �����")
  end
}
}

function submenus_show(menu, caption, select_button, close_button, back_button)
    select_button, close_button, back_button = select_button or 'Select', close_button or 'Close', back_button or 'Back'
    prev_menus = {}
    function display(menu, id, caption)
        local string_list = {}
        for i, v in ipairs(menu) do
            table.insert(string_list, type(v.submenu) == 'table' and v.title .. '  >>' or v.title)
        end
        sampShowDialog(id, caption, table.concat(string_list, '\n'), select_button, (#prev_menus > 0) and back_button or close_button, sf.DIALOG_STYLE_LIST)
        repeat
            wait(0)
            local result, button, list = sampHasDialogRespond(id)
            if result then
                if button == 1 and list ~= -1 then
                    local item = menu[list + 1]
                    if type(item.submenu) == 'table' then -- submenu
                        table.insert(prev_menus, {menu = menu, caption = caption})
                        if type(item.onclick) == 'function' then
                            item.onclick(menu, list + 1, item.submenu)
                        end
                        return display(item.submenu, id + 1, item.submenu.title and item.submenu.title or item.title)
                    elseif type(item.onclick) == 'function' then
                        local result = item.onclick(menu, list + 1)
                        if not result then return result end
                        return display(menu, id, caption)
                    end
                else -- if button == 0
                    if #prev_menus > 0 then
                        local prev_menu = prev_menus[#prev_menus]
                        prev_menus[#prev_menus] = nil
                        return display(prev_menu.menu, id - 1, prev_menu.caption)
                    end
                    return false
                end
            end
        until result
    end
    return display(menu, 31337, caption or menu.title)
end

function pkmmenu(id)
  return
  {
    {
      title = "{ffffff}� ������ ���������",
      onclick = function()
        sampSendChat("/me ������� ���� "..sampGetPlayerNickname(id).." � ������ ���������")
        wait(1500)
        sampSendChat("/cuff "..id)
      end
    },
    {
      title = "{ffffff}� ����� �� �����",
      onclick = function()
        sampSendChat("/me ���������� ���� �� ������ ���������� � ����, ����� ���� ����� �� ����� "..sampGetPlayerNickname(id))
        wait(1500)
        sampSendChat("/follow "..id)
      end
    },
    {
      title = "{ffffff}� ���������� �����",
      onclick = function()
        sampSendChat("/me ����� ��������, ������ ������ �� �����")
        wait(1500)
        sampSendChat("/take "..id)
      end
    },
    {
      title = "{ffffff}� ���������� ������",
      onclick = function()
        sampSendChat("/me ������ ����� �� ������, ������ ��")
        wait(1500)
        sampSendChat("/me ��������� "..sampGetPlayerNickname(id).." � ������")
        wait(1500)
        sampSendChat("/arrest "..id)
        wait(1500)
        sampSendChat("/me ������ ������, ����� ����� � ������")
      end
    },
    {
      title = "{ffffff}� ������ ������ �� �������������",
      onclick = function()
        sampSendChat("/su "..id.." 2 ������������� �� ���. ����������")
      end
    },
    {
      title = "{ffffff}� ������ ������ �� �������� ����������",
      onclick = function()
        sampSendChat("/su "..id.." 3 �������� ����������")
      end
    },
    {
      title = "{ffffff}� ������ ������ �� �������� ����������",
      onclick = function()
        sampSendChat("/su "..id.." 3 �������� ����������")
      end
    },
    {
      title = "{ffffff}� ������ ������ �� ������� ������ �� ������",
      onclick = function()
        sampSendChat("/su "..id.." 6 ������� ������ �� ������")
      end
    },
    {
      title = "{ffffff}� ������ ������ �� ����������� ��������� �� ��",
      onclick = function()
        sampSendChat("/su "..id.. " 6 ����������� ��������� �� ��")
      end
    }
  }
end

function main()
  while not isSampAvailable() do wait(2000) end
  if seshsps == 1 then
    sampAddChatMessage("{9966cc}FBI Tools {ffffff}| Script successfully loaded. Enter: /fthelp to get more information.", -1)
    sampAddChatMessage("{9966cc}FBI Tools {ffffff}| Author: Sesh Jefferson. Remade by Thomas Lawson", -1)
  end
  sampRegisterChatCommand('oop', oop)
  sampRegisterChatCommand('tazer', tazer)
  sampRegisterChatCommand('keys', keys)
  sampRegisterChatCommand('pr', pr)
  sampRegisterChatCommand('su', su)
  sampRegisterChatCommand('ssu', ssu)
  sampRegisterChatCommand("fthelp", fthelp)
  sampRegisterChatCommand('cput', cput)
  sampRegisterChatCommand('ceject', ceject)
  sampRegisterChatCommand('tl', tl)
  sampRegisterChatCommand('st', st)
  sampRegisterChatCommand('deject', deject)
  sampRegisterChatCommand("rh", rh)
  sampRegisterChatCommand('gr', gr)
  sampRegisterChatCommand('warn', warn)
  sampRegisterChatCommand('df', df)
  sampRegisterChatCommand('ms', ms)
  sampRegisterChatCommand('ar', ar)
  sampRegisterChatCommand('kmdc', kmdc)
  while true do wait(0)
    if wasKeyPressed(key.VK_X) and not sampIsChatInputActive() then
      sampSendChat("/tazer")
      wait(1500)
    end
    local valid, ped = getCharPlayerIsTargeting(PLAYER_HANDLE)
    if valid and doesCharExist(ped) then
      local result, id = sampGetPlayerIdByCharHandle(ped)
      if result and wasKeyPressed(key.VK_Z) then
        submenus_show(pkmmenu(id), "{9966cc}FBI Tools {ffffff}| "..sampGetPlayerNickname(id).."["..id.."] ")
      end
    end
      local result, button, list, input = sampHasDialogRespond(1385)
      local result1, button, list, input = sampHasDialogRespond(1386)
      local result2, button, list, input = sampHasDialogRespond(1387)
      local result3, button, list, input = sampHasDialogRespond(1388)
      local result4, button, list, input = sampHasDialogRespond(1389)
      local result5, button, list, input = sampHasDialogRespond(1390)
      local result6, button, list, input = sampHasDialogRespond(1391)
      local result7, button, list, input = sampHasDialogRespond(1392)
      local result8, button, list, input = sampHasDialogRespond(1393)
      local result9, button, list, input = sampHasDialogRespond(1394)
      local result10, button, list, input = sampHasDialogRespond(1395)
      local result11, button, list, input = sampHasDialogRespond(1396)
      local result12, button, list, input = sampHasDialogRespond(1397)
      local result13, button, list, input = sampHasDialogRespond(1398)
      local result14, button, list, input = sampHasDialogRespond(1399)
      local result15, button, list, input = sampHasDialogRespond(1400)
      local _, myid = sampGetPlayerIdByCharHandle(PLAYER_PED)
      if result then
        if button == 1 then
          sampSendChat("/r ���������� � ������ ������������. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result1 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� ������������. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result2 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� ����������. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result3 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� ������. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result4 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� ��������� �����. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result5 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� ��������� ���������. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result6 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� ��������� ��������. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result7 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� ��� LCN. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result8 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� ��� Yakuza. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result9 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� ��� ��. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result10 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� �� Rifa. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result11 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� �� Grove. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result12 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� �� Ballas. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result13 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� �� Vagos. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result14 then
        if button == 1 then
          sampSendChat("/r ���������� � ����� �� Aztec. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
      if result15 then
        if button == 1 then
          sampSendChat("/r ���������� � ������ ��������. �������: "..input)
          wait(1500)
          sampSendChat("/rb "..myid)
        end
      end
  end
end

function fthelp()
  local fthelp = [[
  {9966cc}�������:{ffffff}
  {9966cc}/st [id] {ffffff}- ��������� ������ ��������� ���� �/� ����� ������� [/m]
  {9966cc}/oop [id] {ffffff}- �������� � ����� ������������ �� ���
  {9966CC}/warn [id] [departament] {ffffff}- ������������ ������ � ����� ������������ � ��������� ������ � ������
  {9966cc}/su [id] {ffffff}- ������ ������ ����� ������
  {9966cc}/ssu [id] {ffffff}- ������ ������ ����� ��������� �������
  {9966cc}/cput [id] [seat] {ffffff}- �� ��������� ������� ����������� � ����������/����
  {9966cc}/ceject [id] {ffffff}- �� ��������� ������� ����������� �� ����������/����
  {9966CC}/deject [id] {ffffff}- �� ��������� ������������ ����������� �� ����������/����
  {9966cc}/tl [id] [type] {ffffff}- �� ��������� ������� ��������
  {9966cc}/ms [type] - {ffffff}- �� ��������� ������ ����������
  {9966cc}/keys {ffffff}- �� ��������� ��������� ������ �� ���
  {9966cc}/pr {ffffff}- �������� ����� ������
  {9966cc}/rh [departament] {ffffff}- ��������� ���������� ������ � ������� �������
  {9966cc}/tazer {ffffff}- �� ������
  {9966cc}/gr [departament] [reason] {ffffff}- �������� � ����� ������������ � ����������� ����������
  {9966cc}/df {ffffff}- ������� ������ � ��������������� ����
  {9966cc}/ar [army]{ffffff} - ��������� ���������� �� ����� �� ������� ���������� � ����� ������������
  {9966cc}/kmdc [id]{ffffff} - �� ��������� ���������� �������� � ��� (��� ������)

  {9966CC}�������:{ffffff}
  {9966cc}���+Z �� ������ {ffffff}- ������ ����
  {9966cc}X {ffffff}- ������� ����� /tazer
  ]]
  sampShowDialog(346253, "{9966cc}FBI Tools {ffffff}| Help", fthelp, "OK", "", 0)
end

function sumenu(args)
  return
  {
    {
      title = '{5b83c2}� ������ �1 �',
      onclick = function()
      end
    },
    {
      title = '{ffffff}� �������� - {ff0000}2 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 2 ��������")
      end
    },
    {
      title = '{ffffff}� ����������� ��������� �� ������������ - {ff0000}3 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 3 ����������� ��������� �� ������������")
      end
    },
    {
      title = '{ffffff}� ����������� ��������� �� ���.��������� - {ff0000}6 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 6 ����������� ��������� �� ��")
      end
    },
    {
      title = '{ffffff}� �������� �������� - {ff0000}3 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 3 �������� ��������")
      end
    },
    {
      title = '{ffffff}� ����������� - {ff0000}1 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 1 �����������")
      end
    },
    {
      title = '{ffffff}� ������������ ��������� - {ff0000}1 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 1 ������������ ���������")
      end
    },
    {
      title = '{ffffff}� ���������������� - {ff0000}1 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 1 ����������������")
      end
    },
    {
      title = '{ffffff}� ����������� - {ff0000}2 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 2 �����������")
      end
    },
    {
      title = '{ffffff}� ����� �� �������� - {ff0000}2 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 2 ����� �� ��������")
      end
    },
    {
      title = '{ffffff}� ������������� ����.������� - {ff0000}1 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 1 ������������� ����.�������")
      end
    },
    {
      title = '{ffffff}� ���� ������������� �������� - {ff0000}2 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 2 ���� ������������� ��������")
      end
    },
    {
      title = '{ffffff}� ����� ������ ��������� - {ff0000}1 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.. " 1 ����� ������ ���������")
      end
    },
    {
      title = '{ffffff}� ����������� ������ ��������� - {ff0000}4 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 4 ����������� ������ ���������")
      end
    },
    {
      title = '{ffffff}� ������������ ���������� �� - {ff0000}1 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 1 ������������ ���������� ��")
      end
    },
    {
      title = '{ffffff}� ���� �� ���������� �� - {ff0000}2 ������� �������',
      onclick = function()
        sampSendChat("/su "..args.." 2 ���� �� ���������� ��")
      end
    },
    {
      title = '{ffffff}� ����� �� ����� ���������� - {ff0000}6 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 6 ����� �� ����� ����������")
      end
    },
    {
      title = '{ffffff}� ������������� �� ���������� ���������� - {ff0000}2 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 2 ������������� �� ���. ����������")
      end
    },
    {
      title = '{ffffff}� ���������� - {ff0000}2 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 2 ����������")
      end
    },
    {
      title = '{ffffff}� ������ - {ff0000}1 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 1 ������")
      end
    },
    {
      title = '{ffffff}� �������������� ��������� - {ff0000}1 ������� �������.',
      onclick = function()
        local result = isCharInAnyCar(PLAYER_PED)
        if result then
          sampSendChat("/clear "..args)
          wait(1500)
          sampSendChat("/su "..args.." 1 �������������� ���������")
        else
          sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| You have to be in the car", -1)
        end
      end
    },
    {
      title = '{ffbc54}� ������ �2 �',
      onclick = function()
      end
    },
    {
      title = '{ffffff}� �������� ���������� - {ff0000}3 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 3 �������� ����������")
      end
    },
    {
      title = '{ffffff}� �������� ���������� - {ff0000}3 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 3 �������� ����������")
      end
    },
    {
      title = '{ffffff}� ������� ������ �� ������ - {ff0000}6 ������� �������',
      onclick = function()
        sampSendChat("/su "..args.." 6 ������� ������ �� ������")
      end
    },
    {
      title = '{ffffff}� ������������ ���������� - {ff0000}3 ������� �������',
      onclick = function()
        sampSendChat("/su "..args.." 3 ������������ ����������")
      end
    },
    {
      title = '{ffffff}� ������� ���������� - {ff0000}2 ������� �������',
      onclick = function()
        sampSendChat("/su "..args.." 2 ������� ����������")
      end
    },
    {
      title = '{ffffff}� ������� ������� ����� - {ff0000}2 ������� �������',
      onclick = function()
        sampSendChat("/su "..args.." 2 ������� ������� �����")
      end
    },
    {
      title = '{ffffff}� ����������� ������ ���.��������� - {ff0000}2 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 2 ����������� ������ ���.���������")
      end
    },
    {
      title = '{ae0620}� ������ �3 �',
      onclick = function()
      end
    },
    {
      title = '{ffffff}� ���� � AFK �� ������� - {ff0000}6 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 6 ����")
      end
    },
    {
      title = '{ffffff}� ���������� �������� - {ff0000}6 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 6 ���������� �������")
      end
    },
    {
      title = '{ffffff}� �������� ������ - {ff0000}2 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 2 �������� ������")
      end
    },
    {
      title = '{ffffff}� ���������� ���������� �������� - {ff0000}3 ������� �������.',
      onclick = function()
        sampSendChat("/su "..args.." 3 ���������� ���������� ��������")
      end
    },
    {
      title = '{ffffff}� ��������� ������������/���.��������� - {ff0000}4 ������� �������',
      onclick = function()
        sampSendChat("/su "..args.." 4 ���������")
      end
    },
    {
      title = '{ffffff}� ������ ��� - {ff0000}6 ������� �������',
      onclick = function()
        sampSendChat("/su "..args.." 6 ���")
      end
    }
  }
end

function oop(args)
  pID = tonumber(args)
  if pID == nil then
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /oop ID", -1)
  end
  gint = getActiveInterior()
  if pID ~= nil and sampIsPlayerConnected(pID) then
    if gint == 6 then
      sampSendChat("/d Mayor, ���� �� ��� "..sampGetPlayerNickname(pID):gsub('_', ' ').." ������������ �� ��������, ���, ��� LSPD.", -1)
    elseif gint == 10 then
      sampSendChat("/d Mayor, ���� �� ��� "..sampGetPlayerNickname(pID):gsub('_', ' ').." ������������ �� ��������, ���, ��� SFPD.", -1)
    elseif gint == 3 then
      sampSendChat("/d Mayor, ���� �� ��� "..sampGetPlayerNickname(pID):gsub('_', ' ').." ������������ �� ��������, ���, ��� LVPD.", -1)
    elseif gint ~= 10 and gint ~= 6 and gint ~= 3 then
      sampSendChat("/d Mayor, ���� �� ��� "..sampGetPlayerNickname(pID):gsub('_', ' ').." ������������ �� ��������, ���.", -1)
    end
  else
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Player with ID: "..args.." is not connected", -1)
  end
end

function tazer()
  lua_thread.create(
  function()
    sampSendChat("/tazer")
    wait(1500)
    sampSendChat("/me ������ ��� ��������")
    wait(1500)
  end)
end

function keys()
  lua_thread.create(
  function()
    sampSendChat("/me ���� ����")
    wait(1500)
    sampSendChat("/me ���������� ���� � ������ �� ���")
    wait(1500)
    sampSendChat("/try ���������, ��� ����� ���������")
    wait(1500)
  end)
end

function pr()
  lua_thread.create(
  function()
    sampSendChat("�� ����������, � ��� ���� ����� ������� ��������. ��, ��� �� �������, ����� � ����� ������������ ������ ��� � ����.")
    wait(4000)
    sampSendChat("� ��� ���� ����� �� �������� � �� ���� ���������� ������. ��� ������� ���� �����?")
    wait(1500)
  end)
end

function su(args)
    pID = tonumber(args)
    if pID ~= nil then
        if sampIsPlayerConnected(pID) then
          lua_thread.create(function()
            submenus_show(sumenu(pID), "{9966cc}FBI Tools {ffffff}| "..sampGetPlayerNickname(pID).."["..args.."] ")
          end)
        else
            sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Player with ID: "..args.." is not connected", -1)
        end
    else
        sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /su ID", -1)
    end
  end

function ssu(args)
  sampSendChat("/su "..args)
end

function cput(par)
  local id, seat = string.match(par, '(%d+)%s*(%d*)')
  if id == nil or seat == nil then
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /cput ID SEAT", -1)
  end
  if id ~= nil and sampIsPlayerConnected(id) then
    if seat == "" or seat < "1" or seat > "3" then
      sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /cput ID SEAT", -1)
    elseif seat == "1" then
      if isCharOnAnyBike(playerPed) then
        lua_thread.create(function()
          sampSendChat("/me ������� "..sampGetPlayerNickname(id).." �� ������� ���������")
          wait(1500)
          sampSendChat("/cput "..id.." 1", -1)
        end)
      else
        lua_thread.create(function()
          sampSendChat("/me ������ ����� ���������� � ��������� ���� "..sampGetPlayerNickname(id))
          wait(1500)
          sampSendChat("/cput "..id.." 1", -1)
        end)
      end
    elseif seat =="2" then
      if isCharOnAnyBike(playerPed) then
        lua_thread.create(function()
          sampSendChat("/me ������� "..sampGetPlayerNickname(id).." �� ������� ���������")
          wait(1500)
          sampSendChat("/cput "..id.." 1", -1)
        end)
      else
        lua_thread.create(function()
          sampSendChat("/me ������ ����� ���������� � ��������� ���� "..sampGetPlayerNickname(id))
          wait(1500)
          sampSendChat("/cput "..id.." 2", -1)
        end)
      end
    elseif seat == "3" then
      if isCharOnAnyBike(playerPed) then
        lua_thread.create(function()
          sampSendChat("/me ������� "..sampGetPlayerNickname(id).." �� ������� ���������")
          wait(1500)
          sampSendChat("/cput "..id.." 1", -1)
        end)
      else
        lua_thread.create(function()
          sampSendChat("/me ������ ����� ���������� � ��������� ���� "..sampGetPlayerNickname(id))
          wait(1500)
          sampSendChat("/cput "..id.." 3", -1)
        end)
      end
    end
  end
end

function ceject(par)
  id = tonumber(par)
  if id == nil then
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /ceject ID", -1)
  end
  if id ~= nil and sampIsPlayerConnected(id) then
    if isCharOnAnyBike(playerPed) then
      lua_thread.create(function()
        sampSendChat("/me ������� "..sampGetPlayerNickname(id).." �� ���������")
        wait(1500)
        sampSendChat("/ceject "..par, -1)
      end)
    else
      lua_thread.create(function()
        sampSendChat("/me ������ ����� ���������� � ������� "..sampGetPlayerNickname(id))
        wait(1500)
        sampSendChat("/ceject "..par)
      end)
    end
  end
 end

function tl(par)
  local id, tl = string.match(par, '(%d+)%s*(%d*)')
  if id ~= nil and sampIsPlayerConnected(id) then
    if tl == "" or tl < "1" or tl > "3" or id == nil or tl == nil then
      sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /tl ID TYPE", -1)
      sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| 1 - DRIVER LICENSE | 2 - GUN LICENSE | 3 - AIR LICENSE", -1)
    elseif tl == "1" then
      lua_thread.create(function()
        sampSendChat("/do � ������� ��������� ���")
        wait(1500)
        sampSendChat("/me ������ ���, ����� ���� ����� � ���� ������")
        wait(1500)
        sampSendChat("/me ����������� ������������ �����")
        wait(1500)
        sampSendChat("/take "..id)
      end)
    elseif tl == "2" then
      lua_thread.create(function()
        sampSendChat("/do � ������� ��������� ���")
        wait(1500)
        sampSendChat("/me ������ ���, ����� ���� ����� � ���� ������")
        wait(1500)
        sampSendChat("/me ����������� �������� �� ������")
        wait(1500)
        sampSendChat("/take "..id)
      end)
    elseif tl == "3" then
      lua_thread.create(function()
        sampSendChat("/do � ������� ��������� ���")
        wait(1500)
        sampSendChat("/me ������ ���, ����� ���� ����� � ���� ������")
        wait(1500)
        sampSendChat("/me ����������� �������� �� ����� ���������")
        wait(1500)
        sampSendChat("/take "..id)
      end)
    end
  end
end

function getVehicleNameByPlayerInCar(id)
    local id = tonumber(id, 10)
    local _, myid = sampGetPlayerIdByCharHandle(playerPed)
    if sampIsPlayerConnected(id) or id == myid then
        local res, ped = sampGetCharHandleBySampPlayerId(id)
        if res and doesCharExist(ped) and isCharInAnyCar(ped) then
            local car = storeCarCharIsInNoSave(ped)
            return getNameOfVehicleModel(getCarModel(car))
        end
    end
end

function st(pam)
  id = tonumber(pam)
  if id == nil then
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /st ID", -1)
  end
  if id ~= nil and sampIsPlayerConnected(id) then
    sampSendChat("/m �������� �/C "..getVehicleNameByPlayerInCar(id).." � ���.������� [EVL"..pam.."X], ���������� � ������� � ���������� ��� �/�")
  end
end

function deject(par)
  id = tonumber(par)
  if id == nil then
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /deject ID", -1)
  end
  if id ~= nil and sampIsPlayerConnected(id) then
    local result, ped = sampGetCharHandleBySampPlayerId(id)
    if result then
      if isCharInFlyingVehicle(ped) then
        lua_thread.create(function()
          sampSendChat("/me ������ ����� �������� � ������� "..sampGetPlayerNickname(id))
          wait(1500)
          sampSendChat("/deject "..par)
        end)
      elseif isCharInModel(ped, 481) or isCharInModel(ped, 510) then
        lua_thread.create(function()
          sampSendChat("/me ������ "..sampGetPlayerNickname(id).." � ����������")
          wait(1500)
          sampSendChat("/deject "..par)
        end)
      elseif isCharInModel(ped, 462) then
        lua_thread.create(function()
          sampSendChat("/me ������ "..sampGetPlayerNickname(id).." �� �������")
          wait(1500)
          sampSendChat("/deject "..par)
        end)
      elseif isCharOnAnyBike(ped) then
        lua_thread.create(function()
          sampSendChat("/me ������ "..sampGetPlayerNickname(id).." � ���������")
          wait(1500)
          sampSendChat("/deject "..par)
        end)
      elseif isCharInAnyCar(ped) then
        lua_thread.create(function()
          sampSendChat("/me ������ ���� � ��������� "..sampGetPlayerNickname(id).." �� ������")
          wait(1500)
          sampSendChat("/deject "..par)
        end)
      end
    end
  end
end

function kvadrat()
    local KV = {
        [1] = "�",
        [2] = "�",
        [3] = "�",
        [4] = "�",
        [5] = "�",
        [6] = "�",
        [7] = "�",
        [8] = "�",
        [9] = "�",
        [10] = "�",
        [11] = "�",
        [12] = "�",
        [13] = "�",
        [14] = "�",
        [15] = "�",
        [16] = "�",
        [17] = "�",
        [18] = "�",
        [19] = "�",
        [20] = "�",
        [21] = "�",
        [22] = "�",
        [23] = "�",
        [24] = "�",
    }
    local X, Y, Z = getCharCoordinates(playerPed)
    X = math.ceil((X + 3000) / 250)
    Y = math.ceil((Y * - 1 + 3000) / 250)
    Y = KV[Y]
    local KVX = (Y.."-"..X)
    return KVX
end

function rh(id)
  local _, myid = sampGetPlayerIdByCharHandle(PLAYER_PED)
  if id == "" or id < "1" or id > "3" or id == nil then
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /rh DEPARTAMENT", -1)
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| 1 - LSPD | 2 - SFPD | 3 - LVPD")
  elseif id == "1" then
    sampSendChat("/d LSPD, ���������� ���������� ������ � "..kvadrat()..", ��� �������? ����� �� ���."..myid)
  elseif id == "2" then
    sampSendChat("/d SFPD, ���������� ���������� ������ � "..kvadrat()..", ��� �������? ����� �� ���."..myid)
  elseif id == "3" then
    sampSendChat("/d LVPD, ���������� ���������� ������ � "..kvadrat()..", ��� �������? ����� �� ���."..myid)
  end
end

function gr(pam)
  local dep, reason = pam:match('(%d+)%s+(.+)')
  if dep == nil or reason == nil then
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter /gr [1-3] REASON", -1)
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| 1 - LSPD | 2 - SFPD | 3 - LVPD", -1)
  end
  if dep ~= nil then
    if dep == "" or dep < "1" or dep > "3" then
      sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter /gr [1-3] REASON", -1)
      sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| 1 - LSPD | 2 - SFPD | 3 - LVPD", -1)
    elseif dep == "1" then
      sampSendChat("/d LSPD, ��������� ���� ����������, "..reason)
    elseif dep == "2" then
      sampSendChat("/d SFPD, ��������� ���� ����������, "..reason)
    elseif dep == "3" then
      sampSendChat("/d LVPD, ��������� ���� ����������, "..reason)
    end
  end
end

function warn(pam)
  local id, dep = string.match(pam, '(%d+)%s*(%d*)')
  if dep == nil or id == nil then
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /warn ID DEPARTAMENT", -1)
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| 1 - LSPD | 2 - SFPD | 3 - LVPD",-1)
  end
  if id ~= nil and sampIsPlayerConnected(id) then
    if dep == "" or dep < "1" or dep > "3" then
      sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /warn ID DEPARTAMENT", -1)
      sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| 1 - LSPD | 2 - SFPD | 3 - LVPD",-1)
    elseif dep == "1" then
      sampSendChat("/d LSPD, "..sampGetPlayerNickname(id):gsub('_', ' ')..", �������� �������������� �� ������������ ������ � ������.")
    elseif dep == '2' then
      sampSendChat("/d SFPD, "..sampGetPlayerNickname(id):gsub('_', ' ')..", �������� �������������� �� ������������ ������ � ������.")
    elseif dep == '3' then
      sampSendChat("/d LVPD, "..sampGetPlayerNickname(id):gsub('_', ' ')..", �������� �������������� �� ������������ ������ � ������.")
    end
  end
end

function df()
  lua_thread.create(function()
    submenus_show(dfmenu, "{9966cc}FBI Tools {ffffff}| Bomb Menu")
  end)
end

function ms(par)
  local _, myid = sampGetPlayerIdByCharHandle(PLAYER_PED)
  if par == "" or par < "0" or par > "3" or par == nil then
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /ms TYPE", -1)
    sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| 0 - MASK OFF | 1 - OFFICE | 2 - TRUNK | 3 - BAG", -1)
  elseif par == "1" then
    lua_thread.create(function()
      sampSendChat("/me ���� � ���� ������ ������ � ������� �� �������")
      wait(1500)
      sampSendChat("/me ������ ����, ����� ���� ������ �������� ����������")
      wait(1500)
      sampSendChat("/me ����� �� ���� ���������� � ������ ����")
      wait(1500)
      sampSendChat("/do ����� � ����������")
      wait(100)
      submenus_show(osnova, "{9966cc}FBI Tools {ffffff}| Mask")
    end)
  elseif par == "2" then
    lua_thread.create(function()
      sampSendChat("/me ������ �������� ����������")
      wait(1500)
      sampSendChat("/me ���� � ���� ������ ������ � ����� � ��������")
      wait(1500)
      sampSendChat("/me ������ �� ��������� �������� ���������� � ����� �� ����")
      wait(1500)
      sampSendChat("/me ������ ��������")
      wait(1500)
      sampSendChat("/do ����� � ����������")
      wait(100)
      submenus_show(osnova, "{9966cc}FBI Tools {ffffff}| Mask")
    end)
  elseif par == "3" then
    lua_thread.create(function()
      sampSendChat("/do �� ����� ������ ����� �����")
      wait(1500)
      sampSendChat("/me ������ �����, ���� ������ ������ � ����� ����")
      wait(1500)
      sampSendChat("/me ������ �� ����� �������� ���������� � ����� �� ����")
      wait(1500)
      sampSendChat("/me ������ �����")
      wait(1500)
      sampSendChat("/do ����� � ����������")
      wait(100)
      submenus_show(osnova, "{9966cc}FBI Tools {ffffff}| Mask")
    end)
  elseif par == "0" then
    lua_thread.create(function()
      sampSendChat("/me ���� � ���� ����������")
      wait(1500)
      sampSendChat("/me ����� �� ���� ������ ������")
      wait(1500)
      sampSendChat("/r ���������� � ������ ������")
      wait(1500)
      sampSendChat("/rb "..myid)
    end)
  end
end

function ar(id)
  if id == "" or id < "1" or id > "2" or id == nil then
    sampAddChatMessage("{9966cc}FBI Tools {ffffff}| Enter /ar [1-2]", -1)
    sampAddChatMessage("{9966cc}FBI Tools {ffffff}| 1 - LVa | 2 - SFa", -1)
  elseif id == "1" then
    sampSendChat("/d LVa, ��������� ����� �� ���� ����������, ������ �����������.")
  elseif id == "2" then
    sampSendChat("/d SFa, ��������� ����� �� ���� ����������, ������ �����������.")
  end
end

function kmdc(args)
    pID = tonumber(args)
    if pID ~= nil then
        if sampIsPlayerConnected(pID) then
            lua_thread.create(function()
              sampSendChat("/me ������ ��� � ������ ���������� ��������")
              wait(1500)
              sampSendChat("/do ��� ��� ����������: ���: "..sampGetPlayerNickname(pID):gsub('_', ' '))
              wait(1500)
              sampSendChat("/mdc "..args)
              wait(1500)
              sampSendChat("/time")
              wait(500)
              setVirtualKeyDown(key.VK_F8, true)
              wait(150)
              setVirtualKeyDown(key.VK_F8, false)
            end)
        else
            sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Player with ID: "..args.." is not connected", -1)
        end
    else
        sampAddChatMessage("{9966CC}FBI Tools {EAEAEA}| Enter: /kmdc ID", -1)
    end
  end
