========================================================================================
1.���溯����ֱ�ӵ��������κβ���

YanUIs		db 0dh,0ah
		db '	       ',20 dup(01h),0dh,0ah
		db '	       ',01h,'	   yanhaijing	 ',01h,0dh,0ah
		db '	       ',20 dup(01h),0dh,0ah,0dh,0ah
		db '	       ','	       AsmUI',0dh,0ah,0dh,0ah
		db '	       ','	   QQ:776771343',0dh,0ah,0dh,0ah
		db '  -------------------------------------------------',0dh,0ah,0dh,0ah
		db '	Press enter to main...',0dh,0ah,0dh,0ah
		db '			Quit by close the window',0dh,0ah,0dh,0ah,0dh,0ah
		db '	    Copyright <C> YanhaijingTD',0dh,0ah,'$'

YanUI	proc;�պ��������
	mov dx,offset YanUIs;��ʾ��ʾ
	call puts
	call getchar;��ͣ
	ret
YanUI	endp
===========================================================================================
2.��ͣ������ʵ����ͣ���ܣ�ֱ�ӵ���

msgkey  	db 'Press any key to continue ...','$'

pause	proc;��ͣ��ʾ
	mov dx,offset msgkey;��ʾ��ʾ
	call puts
	call getchar
	ret
pause	endp
=====================================================
3.�س����к�����ʵ�ֻس����й��ܣ�ֱ�ӵ���

msgenter	db 0dh,0ah,'$'

enter	proc;�س������ӳ���
	mov dx,offset msgenter;��ʾ��ʾ
	call puts;����ַ���
	ret
enter	endp
======================================================
7.�ı���ɫ������bh�з���ɫ��37λ����˸��6-4����ɫ��2-0ǰ��ɫĬ�� ,����dos color
6-4        ����ɫ�����õ��ǣ�
6 5 4         ��ɫ
0 0 0         ��
0 0 1         ��
0 1 0         ��
0 1 1         ��
1 0 0         ��
1 0 1         �
1 1 0         ��
1 1 1         ǳ��

color 	proc;�ı���ɫ
	mov ah,06h
	mov al,40h;�崰��
	mov cx,0000h
	mov dh,24h
	mov dl,80h
	mov bh,0cbh;
	int 10h
	ret
color	endp
=========================================================