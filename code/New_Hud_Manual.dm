
������������ ���������� ����������:
global.HUDdatums - ��� �������� ������ � �������� /datum/hud, ������������ ���������� name ������ = ��� �����

________________________________________________________________________________________________________________________
����� /datum/hud
� ������ ������ ��������� ���������� � ����: ���, �������� � ��.


name - ��� ������
list/HUDneed - ������ ����������� ��������� (��������, �������). � ������� ������� ������ ����������� HUDneed � HUDprocess � ����
list/slot_data - ������ ��������� ���������. � ������� ������� ������ ����������� HUDinventory � ����
icon/icon -������������ ���� dmi
HUDfrippery - ������ ��������� ��������� ����. � ������� ������� ������ ����������� HUDfrippery � ����
HUDoverlays - ������ "�����������" ���������. � ������� ������� ������ ����������� HUDtech � ����

������ �������� � ������ HUDneed
"damageoverlay" = list("type" = /obj/screen/damageoverlay, "loc" = "1,1", "icon" =  'icons/mob/screen1_full.dmi')

�������� �������� ������:
"damageoverlay" - ��� � �� ����
"type" - ��� ����, ����� ����� ������� ����� ��� ������ ���������
"loc" - ��������� �� ������
"icon" - ������������ dmi ����, �������������� icon ������ ������, ������������
"state" - ������������ ������, �������������� ��������, ��� ���������� ������ � ������ ����

������ �������� � ������ slot_data
"r_hand" =       list("loc" = "7,0",  "name" = "Right Hand",      "state" = "hand", "dir" = SOUTH)

�������� �������� ������:
"r_hand" - ��� �����
"loc" - ��������� �� ������
"name" - �������� �������� ����
"state" - ����� ������ ����� ������������
"dir" - ���������, �������������� ��������
"toggle" = 1 - ��� ��������, ������������ ��� ������������ �� �������� ��������� ����

������ �������� � ������ HUDfrippery
�������� �������� ������:
������ �������� � ������ HUDoverlays
�������� �������� ������:
________________________________________________________________________________________________________________________
�������� �������� ��� ����

����� ���:/obj/screen

������������ ���������� ����������
	var/mob/living/parentmob - ���, � �������� �������� ���
	var/process_flag = 0 - ���� ������������� ������ ������������ process()

������������ ������������
/Click() - ��� ���������, ������� �������� ��� ����� �� ���
/process() - ��� ���������, �������� ���-�� ��������� (� �������� ��� ������ life � ����).

________________________________________________________________________________________________________________________
����� /datum/species

������������ ���������� ����������:
var/datum/hud_data/hud - ����� ��������� ������ �� ����� � �������� /datum/hud_data
var/hud_type - ��������� ��� ������ /datum/hud_data ��� �����

________________________________________________________________________________________________________________________
����� /datum/hud_data

������������ ���������� ����������:
	var/list/ProcessHUD - � ������ ������ �������� "�����" ��������� ����, ��� �������������.
	������: "health"

	var/list/gear - ������ ��� ��������� ���� ���������, ������������ "���" ����� � �����������
	������: "i_clothing" =   slot_w_uniform,
________________________________________________________________________________________________________________________
������������ ���������� �� ������ ����
/mob/living
	var/list/HUDneed - ������ ��������� ���� ��� ����������� �� ������
	var/list/HUDinventory - ������ ��������� ����, ������� �������� "����������" ����, ��� ����������� �� ������
	var/list/HUDfrippery - ������ ��������� (��������, �����)
	var/list/HUDprocess - ������ ��������� ����, � ������� ����� �������� process()
	var/list/HUDtech - ������ ��������� ����, ������� �������� "������������" (��������, ���� ��� ������� ����), ��� ����������� �� ������
	var/defaultHUD - ��������� ��� ����, ������� ���������� ���

________________________________________________________________________________________________________________________
������������ ������������ �� ������ ����
/mob/proc/create_HUD() - ������������, ��� �������� ��������� ����
/mob/living/proc/destroy_HUD() - ������������, ��� ����������� ��������� ����
/mob/living/proc/show_HUD() - ������������, ��� ����������� ��������� ���� � �������

/mob/living/proc/check_HUD() - �������� ������������, � ��� ������������� "������������" ����, � ����� �� ���� ��������\����� ��������� �� �����
/mob/living/proc/check_HUDdatum() - ��������� ������� ����� � ���� �� ������������, ���������� 1, ���� ��� ���������, ��� 0, ���� �����
/mob/living/proc/check_HUDinventory() - ��������� ���������� HUDinventory � ���� �� ������������, ���������� 1, ���� ��� ���������, ��� 0, ���� �����.(�� ������������, �� ����������)
/mob/living/proc/check_HUDneed() - ��������� ���������� HUDneed � ���� �� ������������, ���������� 1, ���� ��� ���������, ��� 0, ���� �����.(�� ������������, �� ����������)
/mob/living/proc/check_HUDfrippery() - ��������� ���������� HUDfrippery � ���� �� ������������, ���������� 1, ���� ��� ���������, ��� 0, ���� �����.(�� ������������, �� ����������)
/mob/living/proc/check_HUDprocess() - ��������� ���������� HUDprocess � ���� �� ������������, ���������� 1, ���� ��� ���������, ��� 0, ���� �����.(�� ������������, �� ����������)
/mob/living/proc/check_HUDtech() - ��������� ���������� HUDtech � ���� �� ������������, ���������� 1, ���� ��� ���������, ��� 0, ���� �����.(�� ������������, �� ����������)

��������� ������������ ������� �������� � �������������� ��������
/mob/living/proc/create_HUDinventory() - � HUDinventory ����
/mob/living/proc/create_HUDneed() - � HUDneed ����
/mob/living/proc/create_HUDfrippery() - � HUDfrippery ����
/mob/living/proc/create_HUDprocess() - � HUDprocess ����
/mob/living/proc/create_HUDtech() - � HUDtech ����

________________________________________________________________________________________________________________________
��� ��� ��������



________________________________________________________________________________________________________________________
������� � ������ �����

1) ��� ������������� ���� ��� ����������� ������� ����, ���������� ����� ���� � ��������� "[type_name]_hud". ������: human_hud.dm, robot_hud.dm.
2) ��� �������� ����� ������������ ��� ������ � �������, ������ � "��������" � ������������ � ����� _HUD. ������: create_HUD(), show_HUD().
2.1) ��� ������ � �����������, ����������� �������� ����������. ������: check_HUDfrippery()
3) ��� ������������� ���� ��� ����������� ������� /obj/screen, �������� ����� ���� � ��������� "[species_name]_screen_object",
���� �� �������� �������� ��� "����", ���� ������ ��� ��� ������ ����, �� �������� ���� � ��������� "[species_name]_[HUDname]_screen_object".
����������: � ����� "screen_object.dmi", ��������� "�������" ���.
4)��� ������������, ���������� �� �������� ���� ���� (check_HUDdatum(), check_HUDinventory() � �.�) �� ������ ����� ������ ���� ���, �� ����������� � ��������,
��������, ����� ��������������. ������������, ���������� �� ��������, ������ �������� ��������� ��������.