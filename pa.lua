local sf = require 'sampfuncs'
local key = require 'vkeys'
local dlstatus = require('moonloader').download_status
cstart = 1
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

local my_dialog = {
    {
        title = '{9966CC}������: {ffffff}������� ������',
        onclick = function()
            sampSendChat("����, �� ��������� � ��������� ������ SFPD.")
            wait(5000)
            sampSendChat("��� ������, �������� � ����� ������, ���: ����� ���, ��� ����� �.�.�.")
            wait(5000)
            sampSendChat("� ����������� ������ ������:")
            wait(5000)
            sampSendChat("������ ��� �� ������ A � B, ��������� �� ���������.")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
            wait(2500)
            sampSendChat("�� �����������, ��������� � ���������� �� ����� 5 ����� ����������� � �����.")
            wait(5000)
            sampSendChat("�������� ��� ������, �����, ����������.")
            wait(5000)
            sampSendChat("������ ����� � ������ ������ ������.")
            wait(5000)
            sampSendChat("��� ���������: ")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
            wait(2500)
            sampSendChat("�������� ���� ��� ������� � �����, ����� �� �����, ��������� ��� ��������, ����� ��������� �����.")
            wait(5000)
            sampSendChat("�������� ������� ��� ����������.")
            wait(5000)
            sampSendChat("��������� ���������� �������, ��������� � ������, ���������� ������. ")
            wait(5000)
            sampSendChat("������������ ��������� ������ ������ ������������, ������ � ����� �����������. ")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
            wait(2500)
            sampSendChat("�� ��������� �������� ���, ������� �� �������� �� ������������. ")
            wait(5000)
            sampSendChat("��� ���������: ")
            wait(5000)
            sampSendChat("�� ��������� �������� ���, ������� �� ��������, �������� ������ ��������� ������. ")
            wait(5000)
            sampSendChat("����� ������ � ��������� �������. ")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
            wait(2500)
            sampSendChat("������� �� ��������� ���������� ����� ��� ��� ����� �������� � ����� ��� ����� ���� ���� ���� � ���������. ")
            wait(5000)
            sampSendChat("������� ������� �� ��, ��, ��, ������ ������������� ���. ����, ���������� � ���� ������. ")
            wait(5000)
            sampSendChat("�����, ��� ����� ������, ��� ����������� ������ ������������ �����. ")
            wait(5000)
            sampSendChat("��� ������� �� ������ ��������� ���������� � ����������� ������ ��������.")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
            wait(2500)
            sampSendChat("����� ����� ������������� � ��������, �� ������ �������� �� ����� � �������������. ")
            wait(5000)
            sampSendChat("�� ���� ����������� ���������� ��� ����� ��������� �� ������ ������������ �� ��� �������. ")
            wait(5000)
            sampSendChat("�����! ��� ����� ���������� �� ���. ������� �����, ")
            wait(5000)
            sampSendChat("��� ���� ���-�� ��� ��������� �� ����� ��������.")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
        end
    },
    {
        title = '{9966CC}������: {ffffff}������� � ������������',
        onclick = function()
            sampSendChat("������ � ������� ��� ������ �� ���� ��������� � ������������. ")
            wait(5000)
            sampSendChat("�������� ��� �������� ����������� �� ���")
            wait(5000)
            sampSendChat("����� � ��� ���������� ����� �����������, �� ������� ������������")
            wait(5000)
            sampSendChat("������: ������� �����, ������ ������� ���� ������")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
            wait(2500)
            sampSendChat("����� ��������� �������� ��� ��� ���������")
            wait(5000)
            sampSendChat("���� ��� ��������� SFPD, �� �� ������ ��� ���������� � �������� ������� ������")
            wait(5000)
            sampSendChat("����� ����� �������� � �����, ��� � ����� ������ �����-��")
            wait(5000)
            sampSendChat("���� ��� �����������, �������� ��������� ���������� �� ���������� �������")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
            wait(2500)
            sampSendChat("�� �� ������ �������� ��� ���� ��������")
            wait(5000)
            sampSendChat("���� �� ������� � ����-�� �� �����������, �� �������� �� ���� � �����")
            wait(5000)
            sampSendChat("� ��������� ������������ ������� �� ���")
            wait(5000)
            sampSendChat("���� � ���� ��� ������� ������ ���������� �� ���������� ����������,")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
            wait(2500)
            sampSendChat("�� ������ ������� ���, ��� �� ������ �������� ���������� ")
            wait(5000)
            sampSendChat("- �������� ����������, ��� �� ����� ��������� ���������� ��� �� ������ �� ������������.")
            wait(5000)
            sampSendChat("� ������ ������ �������� ����������, ��������� �� ����� �������� ��� ���������� ������.")
            wait(5000)
            sampSendChat("������ ��� �� ��� ����� �� ����������� �� ���������, ������ � ������ ��������� �� ����.")
            wait(5000)
            sampSendChat("������ ���������, ������� ����?")
            wait(1500)
            sampSendChat("/time")
            wait(500)
            setVirtualKeyDown(key.VK_F8, true)
            wait(150)
            setVirtualKeyDown(key.VK_F8, false)
        end
    },
    {
      title = '{9966CC}������: {ffffff}��������� ����',
      onclick = function()
        sampSendChat("�����������, ������ � ������� ��� ������. ")
        wait(5000)
        sampSendChat("���� ������: ���������� ����")
        wait(5000)
        sampSendChat("� ������� ���������� ������� ���� ��������� ����.")
        wait(5000)
        sampSendChat("��������� ���� �������� ��� ������ ������, ��� Deagle � Shotgun.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("��������� ���� ������������� ��� ����� ���������.")
        wait(5000)
        sampSendChat("��������� ���� �������� ������� �������� � ���.")
        wait(5000)
        sampSendChat("��������� ���� ����� ������������:")
        wait(5000)
        sampSendChat("��� ����, ����� ����������� ����������, ����������� �� ��������� �����.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("����� ����, ��� �� ����������� ���, �� ����� ����� �������� �����.")
        wait(5000)
        sampSendChat("� ���������� ����� ���� ������, ���� ���� ����� ����� ������ ���.")
        wait(5000)
        sampSendChat("��������� ������������ ��������� ���� � �����������, ����������: ���� �������� �� � ���.")
        wait(5000)
        sampSendChat("�� ���� ������ ��������.")
        wait(5000)
        sampSendChat("� ���� ���� ������� �� ���� ������?")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
      end
    },
    {
      title = '{9966CC}������: {ffffff}������� ���� ��������',
      onclick = function()
        sampSendChat("����������� ��� �� ������ � �������� ���� ��������.")
        wait(5000)
        sampSendChat("������� � �������� � �������� ���� ��������.")
        wait(5000)
        sampSendChat("����� � ����, ��� ��������� ������ ��� ���� ��������.")
        wait(5000)
        sampSendChat("��������� ��������� ����� �������� �������, 50 ��/�.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("��������� �������� ������� � �������� ���������� �������.")
        wait(5000)
        sampSendChat("����� ��������� ���, ������ �������� ������ �������.")
        wait(5000)
        sampSendChat("�� ����� ����������� � ������� ������ ���� ����� ������� ��������,")
        wait(5000)
        sampSendChat("���� ����� ������, ����� ������� ������ ��� ���� �������.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("�� ���� � ���� ���, ������� �� ��������.")
        wait(5000)
        sampSendChat("� ���� ���� �������?")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
      end
    },
    {
      title = '{9966CC}������: {ffffff}�������� ����������',
      onclick = function()
        sampSendChat("����������� ����, ������ � ������� ������ �� ���� �������� ����������")
        wait(5000)
        sampSendChat("����� ��������� ����������, �� ������� �������������.")
        wait(5000)
        sampSendChat("������: ������ ������, ���������� ���� ���������.")
        wait(5000)
        sampSendChat("/b /do �� ����� ����� ����������� ����� SAPD - SF.")
          wait(1500)
          sampSendChat("/time")
          wait(500)
          setVirtualKeyDown(key.VK_F8, true)
          wait(150)
          setVirtualKeyDown(key.VK_F8, false)
          wait(2500)
        sampSendChat("��������� ��������� ��������� � �������, ������� ������ ��� ��� �� ��������.")
        wait(5000)
        sampSendChat("���������� ��������� ������ � ���������, ������� ��� ��� �������� �����.")
        wait(5000)
        sampSendChat("�������� ���������� �������������� �� �����.")
        wait(5000)
        sampSendChat("���� ��������� ����� ��, �� ����� � ������� ������� ��� ������������ ��������.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("���� ��������� �������������� ��� �� �����,")
        wait(5000)
        sampSendChat("�� ���������� � ������ �� ������ 7.1, ������������.")
        wait(5000)
        sampSendChat("�� ���� ������ ��������.")
        wait(5000)
        sampSendChat("� ���� ���� ������� �� ���� ������?")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
      end
    },
    {
      title = '{9966CC}������: {ffffff}����������',
      onclick = function()
        sampSendChat("�����������, ������ � ������� ��� ������, �� ����: ����������")
        wait(5000)
        sampSendChat("���������� � ������������ ������� ������� ������.")
        wait(5000)
        sampSendChat("�� ��������� ���������� ������ ����������� �����, ����� � ��� �����.")
        wait(5000)
        sampSendChat("���� ��� ���� ������� �� ������� ����������, �� �� ������� ����������.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("���������� ����� ������ ������ � ����.")
        wait(5000)
        sampSendChat("����� ����, ��� � ����� ������������ ��������� ���������,")
        wait(5000)
        sampSendChat("� ���, ��� �� �������� � ������ ����� �� ������ ������� � ������ �����.")
        wait(5000)
        sampSendChat("����� ������ �� ������� ���������� ��������� ����� ���� ������, � ������:")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("��������� � ������,��������� �����,��������� ������� � ���� ��������.")
        wait(5000)
        sampSendChat("�����, ���� �� ��������� �� ������������ � �� ����� � ������ ����������, ��")
        wait(5000)
        sampSendChat("������������� ����� ����� ��� ����������, ���������� ������� �� ����.")
        wait(5000)
        sampSendChat("��� �� ���������� ����������� �� ��������� ������� ������")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("� ����� ����������� � �������")
        wait(5000)
        sampSendChat("�� ���� ������ ��������.")
        wait(5000)
        sampSendChat("� ���� ���� ������� �� ���� ������?")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
      end
    },
    {
      title = '{9966CC}������: {ffffff}������� � ���������',
      onclick = function()
        sampSendChat("�����������, ������ � ������� ������ �� ���� ������� � ���������.")
        wait(5000)
        sampSendChat("��������� ������ ���� �������� ��� ������� � ���������")
        wait(5000)
        sampSendChat("� ����������� ������������ ��� ���������� ��������� ��� �����, ����� ���, � ��� ����� ")
        wait(5000)
        sampSendChat("������� ���������� ������ ��������� ������� ���������� � ������ ����������� ���������� � ���. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("���������� � ���������� �� ��, ������ ���� �������������������. ")
        wait(5000)
        sampSendChat("���������� ������������ ������� ��������� ������������ ��� ������� �� �������� �� ������ ��� ��������� ")
        wait(5000)
        sampSendChat("���������� ����� ���������� �� �� � ��������, ������� ��������� � �� ������ ���")
        wait(5000)
        sampSendChat("������������� ���� ��� ������ ������������� ������� ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("�� ���� ������ �����������, ������� ���� ��� �� ��������� ��� ������ - ���������� �� ��.")
        wait(5000)
        sampSendChat("�� ���� ��, ��������� �� �������� ")
        wait(5000)
        sampSendChat("� ���� ���� �������?")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
      end
    },
    {
      title = '{9966CC}������: {ffffff}���',
      onclick = function()
        sampSendChat("������ � ������� ��� �������� ������, �� ����: ��� ")
        wait(5000)
        sampSendChat("��� � �����, ���������� ��������������� ��� ������� � ������� ��������.")
        wait(5000)
        sampSendChat("��� ��������� � ��������� ������� �������, �� ������.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("���� �� ������ �������� ����� �������� ����� ������ �������, ��� ��")
        wait(5000)
        sampSendChat("��������� �� ���� ��������, �� �� ������ �������� ��� � ������ � ����.")
        wait(5000)
        sampSendChat("����������� ����� ����� �� ������ ������� � ���������.")
        wait(5000)
        sampSendChat("����� �������� ��� ��� �������� ����� �������� �������� ���.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("�� ��������� �������� �������� ����� ������� ��������.")
        wait(5000)
        sampSendChat("�� ��������� ��������� ���������.")
        wait(5000)
        sampSendChat("�� ���� ������ ��������.")
        wait(5000)
        sampSendChat("� ���� ���� ������� �� ���� ������?")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
      end
    },
    {
      title = '{9966CC}������: {ffffff}������� ������ � ������',
      onclick = function()
        sampSendChat("���� ������: ���������� � ������ ")
        wait(5000)
        sampSendChat("� ���, �������� ������ ��������� ������ �����, ������� �������� �����.")
        wait(5000)
        sampSendChat("�������� ������ ����� �������� ������, ������� ������������� ���������.")
        wait(5000)
        sampSendChat("������������� ���������:")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("����������� ����� ������.")
        wait(5000)
        sampSendChat("������ ������, ���� �� ���� �� ������ ��������� ��� �� ������� �������������.")
        wait(5000)
        sampSendChat("���������� ���������� ������.")
        wait(5000)
        sampSendChat("� ������ ��������� �� �������� ������. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("�� ���� ������ ��������.")
        wait(5000)
        sampSendChat("� ���� ���� ������� �� ���� ������?")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
      end
    },
    {
      title = '{9966CC}������: {ffffff}������ ��������',
      onclick = function()
        sampSendChat("������ �� ���� ������ �������")
        wait(5000)
        sampSendChat("������ ������������� �������� ������ ����, ��������, ����� ������������ ����� �����")
        wait(5000)
        sampSendChat("��� ����������� �������������� �����, �� ������ ��, �������� ����.����� ")
        wait(5000)
        sampSendChat("�� ���������� ��������� �����, ��� �� �������������� ��� �� ���������. � ��� ����� ���� ������������� �������� ����������")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("E��� �� ���������� ����������� ������� ����� �����, �������� �������, ��������, �� ����������� �� ")
        wait(5000)
        sampSendChat("���� ���� ������� �� ������ ����������� ,����������� ��������� ����. ")
        wait(5000)
        sampSendChat("���� �� ���������� ����������� ������� � ����������, ���������� �������� ������� � ������������� ��� ������.")
        wait(5000)
        sampSendChat("� ��� ����� ������� ����������� ����� � ������� ����������.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("������������ ����� ����������� ��������")
        wait(5000)
        sampSendChat("������������ ��� ����� ������� ������� ����� , ����� ���� ������ ��� ����� ������ �� �������. ")
        wait(5000)
        sampSendChat("� �������� ��������� ������������ ����� ������� ������� ��������: �����, ������, �������, ������� � �.�.")
        wait(5000)
        sampSendChat("����� �������� ���� ������� �� ������ �������� ���������� ��������� �����, ������� ��������� ����� � ��������.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("�� ���� ������ ���������.")
        wait(5000)
        sampSendChat("� ���� ���� ������� �� ���?")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
      end
    },
    {
      title = '{9966cc}������: {ffffff}������ ��� �����',
      onclick = function()
            local _, myid = sampGetPlayerIdByCharHandle(PLAYER_PED)
        sampSendChat("/s ������� �����, ������� ��������������! ")
        wait(5000)
        sampSendChat("/s �, " ..sampGetPlayerNickname(myid):gsub('_', ' ').. " , ��������� ������ ����������� �������� SFPD ")
        wait(5000)
        sampSendChat("/s ������� � ���� �������� ��� ��� ������... ")
        wait(5000)
        sampSendChat("/s � ������ ������������ ������������ San Fierro. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("/s ����������� �������� � ���� ��������� ������, ����� ���:")
        wait(5000)
        sampSendChat("/s Patrol Service, ����� ������� ���������� ������� ������������, ")
        wait(5000)
        sampSendChat("/s ������� ������������ � ������. ")
        wait(5000)
        sampSendChat("/s �������� �����, � ������� �������� ������ ����� ")
        wait(5000)
        sampSendChat("/s ��������� ������ ������������. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("/s ��������� �����, ��� ����� ����������� ��������. ")
        wait(5000)
        sampSendChat("/s ����� ���������� �������� ����������� ")
        wait(5000)
        sampSendChat("/s � ��������� ������� �������� �������.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("/s ��� �� � ��� ������� ����������� �����, ")
        wait(5000)
        sampSendChat("/s ������� ���������� ��������������� ���������� ������������.")
        wait(5000)
        sampSendChat("/s �, ��������� �����, - ��� SWAT. ")
        wait(5000)
        sampSendChat("/s ������� ����������������� ������������, ")
        wait(5000)
        sampSendChat("/s ������� ��������� � ����. ���������, ")
        wait(5000)
        sampSendChat("/s � ������������ ������� �� ������ ������, ")
        wait(5000)
        sampSendChat("/s ��� �� ���������� ������� ������������. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("/s ��� ���� ����� ��������� �� ������ � ��� � �������,")
        wait(2000)
        sampSendChat("/s ��� ����������: ")
        wait(5000)
        sampSendChat("/s ����� ������ �� �������� ��������, ")
        wait(5000)
        sampSendChat("/s �������� �� ������ � �� ����� ������������ �������. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("/s ����� ����������� � ��� �� ������, ")
        wait(5000)
        sampSendChat("/s �� ������������� ������������ � ����������� ��������. ")
        wait(5000)
        sampSendChat("/s ��� ��������� �������� �� ����� ��� ��� ���, ")
        wait(5000)
        sampSendChat("/s � ����� - ������������ � ����� �������� � ��������� ")
        wait(5000)
        sampSendChat("/s ��������� ��������� � ������: ������. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("/s ���� ������ ������� ������� � ������� � ��������� �� ���������, ")
        wait(5000)
        sampSendChat("�� ���� ��� ������ ���������.")
        wait(5000)
        sampSendChat("/s � ���� ���� ������� - ���������.")
      end
    },
    {
      title = '{9966CC}������: {ffffff}������ ����� ����������� PS',
      onclick = function()
        sampSendChat("����, �� ��������� � Patrol Service SFPD. ")
        wait(5000)
        sampSendChat("��� ������ ������� ������ �� ����� ��� ������� 31 ")
        wait(5000)
        sampSendChat("� ����������� ������� ������: ������ �� ������ ����, ��, SFa, SFn ")
        wait(5000)
        sampSendChat("��� ����� ����� �������� �� ���������, ����� ������. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("�� �����������, ��������� � ���������� �� ����� 5 ����� ����������� � �����. ")
        wait(5000)
        sampSendChat("�������� ������� �� ������, ��������� ��������� ������ ")
        wait(5000)
        sampSendChat("��������� ������������ ��� ������� � ���������� � ������������ ���. ��������. ")
        wait(5000)
        sampSendChat("������ ����� � ������ ������ ������. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("��� ���������: ")
        wait(5000)
        sampSendChat("�������� ���� ��� ������� � �����, ����� �� �����, ��������� �������� ����� �������. ")
        wait(5000)
        sampSendChat("����������� �������� � ���������� � ���. ������������. ")
        wait(5000)
        sampSendChat("�� ��������� �������� ���, ������� �� �������� �� ������������. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("��� ���������: ")
        wait(5000)
        sampSendChat("�� ��������� �������� ���, ������� �� ��������, �������� ������ ��������� ������. ")
        wait(5000)
        sampSendChat("����� ������ � ��������� �������. ")
        wait(5000)
        sampSendChat("��������� ������, ���������� ������, ������������ ��������� ������, � ��� �� ��������� ����. ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("���������� ���� ��������� �������, � ����� ����������� ����� � ��� �� ��.����, ����� ���������� ������ ���� ������ ")
        wait(5000)
        sampSendChat("�������� �����: ����, ��. �� ����� �������� �������. ")
        wait(5000)
        sampSendChat("��������� ������ PS - ��� ���������� ���������� � ��������� (� ��������) ")
        wait(5000)
        sampSendChat("��������� �/� ������������� ��� ������ �������, ������� ������ � ������ ������������� � � ���������� ������� ")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
        wait(2500)
        sampSendChat("����� ��������� ���������� � ����� � �����������, ������� ������������� �������� �������� ���������. ")
        wait(5000)
        sampSendChat("����������� �������� ����� ��� ���. ����� ������ ������, ��� �� ������ � �� ������.")
        wait(1500)
        sampSendChat("/time")
        wait(500)
        setVirtualKeyDown(key.VK_F8, true)
        wait(150)
        setVirtualKeyDown(key.VK_F8, false)
      end
    },
    {
      title = '{FF8C00}���������: {FFFFFF}������ ������ ������� ��',
      onclick = function()
        sampSendChat("/me ����� ������ ������� ��")
        wait(1500)
        sampSendChat("/clist 28")
      end
    },
    {
      title = '{ff8c00}���������: {ffffff}������ ������ ����������� ��',
      onclick = function()
        sampSendChat("/me ����� ������ ����������� ��")
        wait(1500)
        sampSendChat("/clist 15")
      end
    },
    {
      title = '{ff8c00}���������: {ffffff}������ ������ ���.���.��',
      onclick = function()
        sampSendChat("/me ����� ������ ���.���.��")
        wait(1500)
        sampSendChat("/clist 12")
      end
    },
    {
      title = '{ff8c00}���������: {ffffff}�������� ������� ��� ��������(��� ������ ��)',
    onclick = function()
      local _, myid = sampGetPlayerIdByCharHandle(PLAYER_PED)
      sampSendChat(string.format("/r [������ ��] ������, ���� ������� �������� ������ �� �.%s", myid))
    end
  },
  {
    title = '{ff8c00}���������: {ffffff}�������� ������� ��� ��������(��� ���������� ��)',
  onclick = function()
    local _, myid = sampGetPlayerIdByCharHandle(PLAYER_PED)
    sampSendChat(string.format("/r [���������� ��] ������, ���� ������� �������� ������ �� �.%s", myid))
  end
},
{
  title = '{ff8c00}���������: {ffffff}�������� ������� ��� ��������(��� ���.���.��)',
onclick = function()
  local _, myid = sampGetPlayerIdByCharHandle(PLAYER_PED)
  sampSendChat(string.format("/r [���.���.��] ������, ���� ������� �������� ������ �� �.%s", myid))
end
},
{
  title = '{ff8c00}���������: {ffffff}��������� ����� �� ���� PA',
  onclick = function()
    result, pickup = createPickup(19605, 19, -2635.1477050781, 261.07876586914, 4.328125)
    marker = addBlipForPickup(pickup)
  end
}
}

function main()
  while not isSampAvailable() do wait(1000) end
  if cstart == 1 then
    sampAddChatMessage("PA Menu loaded.", -1)
  end
  sampRegisterChatCommand('pundate', pupdate)
  while true do wait(0)
    if wasKeyPressed(key.VK_F2) then
      submenus_show(my_dialog, 'PA Menu')
    end
  end
end

function pupdate()
  downloadUrlToFile("https://github.com/WhackerH/kirya/blob/master/shpora.luac?raw=true", thisScript().path, function(id, status)
  if status == dlstatus.STATUS_ENDDOWNLOADDATA then
    thisScript():reload()
  end
end)
end