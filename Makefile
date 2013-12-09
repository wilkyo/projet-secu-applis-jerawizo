# Tentative de Makefile

########################################################################
# MACROS                                                               #
########################################################################

# Script
COMP=./scripts/build.sh

# Sources
SRC=com.hz.game.cd
EVIL=evil.apk
OUT=out

# Le fichier apk
APK = $(SRC:=.apk)



########################################################################
# CIBLES                                                               #
########################################################################


# make sans paramètre lance le build
all: build

# make debuild ou make out lance la décompilation
debuild: $(OUT)
$(OUT):
	@echo "===== Decompiling ====="
	rm -r $(OUT) $(OUT).apk tmp 2>/dev/null ; apktool d $(APK) $(OUT)


# make build lance la recompilation
build: $(OUT) $(APK)
	@echo "===== Compiling ====="
	$(COMP) $(APK) $(EVIL)


# make evil.apk lance la compilation, mais make sans paramètre devrait être utilisé
$(EVIL): build
# make install tente d'installer l'apk modifié sur un appareil 
install: $(EVIL)
	@echo "===== Running ====="
	adb install $(EVIL)


# make clean nettoie les dossiers créés
# ATTENTION: Ceci supprimera le dossier out, donc faites attentions à vos modifications
clean:
	@echo "===== Cleaning ====="
	rm -rf *~ $(OUT) tmp $(EVIL)


