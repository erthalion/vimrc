#!/usr/bin/python

import sys, imaplib

def normalize(typ, data):
    if typ == 'OK':
        typ, data = imap_server.search(None, '(UNSEEN)')
        if typ == 'OK':
            unseen = len(data[0].split())
            return unseen
        else:
            return ''
    else:
        return ''


port = 993
server = 'imap.gmail.com'

username = 'user@mail.com'
passwd = 'password'

imap_server = imaplib.IMAP4_SSL(server, port)
try:
    imap_server.login(username, passwd)
except Exception as ex:
    print('?? new')
    sys.exit( 1 )

#typ, data = imap_server.select ('learning', True)
typ_spam, data_spam = imap_server.select ('[Gmail]/Spam', True)
spam = normalize(typ_spam, data_spam)

typ_in, data_in = imap_server.select ('Inbox', True)
inbox = normalize(typ_in, data_in)

sys.stdout.write("{inbox}/{spam}".format(inbox=inbox, spam=spam))
sys.stdout.flush()

imap_server.logout()
