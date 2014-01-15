# Tentative de Makefile

########################################################################
# MACROS                                                               #
########################################################################

# Script
COMP=./scripts/build.sh

# Sources
SRC=com.xxogli.xadroid.checkers
EVIL=evil.apk
OUT=checkers_apk

# Le fichier apk
APK = $(SRC:=.apk)



########################################################################
# CIBLES                                                               #
########################################################################


# make sans paramètre lance le build
all: sign

# make debuild ou make out lance la décompilation
debuild: $(OUT)
$(OUT):
	@echo "===== Decompiling ====="
	rm -r $(OUT) $(OUT).apk tmp 2>/dev/null ; apktool d $(APK) $(OUT)


# make build lance la recompilation
build: $(OUT)
	@echo "===== Compiling ====="
	apktool b $(OUT) $(EVIL)

poc:
	@echo "===== PoCing ====="
	$(COMP) $(APK) $(EVIL) $(OUT)

# make evil.apk lance la compilation, mais make sans paramètre devrait être utilisé
$(EVIL): build

sign: $(EVIL)
	@echo "===== Signing ====="
	jarsigner -sigalg MD5withRSA -digestalg SHA1 -keystore ~/.android/debug.keystore $(EVIL) androiddebugkey -storepass android

uninstall:
	@echo "===== Uninstalling ====="
	adb uninstall $(SRC)

# make install tente d'installer l'apk modifié sur un appareil 
install: uninstall sign
	@echo "===== Installing ====="
	adb install $(EVIL)


# make clean nettoie les dossiers créés
# ATTENTION: Ceci supprimera le dossier out, donc faites attentions à vos modifications
clean:
	@echo "===== Cleaning ====="
	rm -rf *~ $(OUT) tmp $(EVIL)


