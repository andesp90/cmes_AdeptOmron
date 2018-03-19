# cmes_AdeptOmron
Programma in V+ per progetto Nicola ed Andrea


Devi far partire cmes() in un task diverso da task0 e task2 (io la faccio partire in task1); il movimento (cmes_move()) è caricato su task0, mentre le info (cmes_info()) su task2.

All'inizio di cmes() è definito il collegamento TCP per definire i dati dello spazio di lavoro: purtroppo non posso verificarlo a lavoro, quindi se puoi farlo te bene, altrimenti aspettiamo quando torno (dal 16 del prossimo mese, in teoria!).

Per quel che riguarda le infomrazioni, non ho ancora appurato cosa posso fornire o meno all'utente, ma mi pare si possa richiedere lo status del robot. Quindi immagino serva un solo comando, ma ho il problema che, quel comando che ho trovato online, non mi viene riconosciuto.
