# Tentative de Makefile

########################################################################
# MACROS                                                               #
########################################################################

# Script
DIFF=./relative_diffrec.sh

# Sources
# Deux dossiers à comparer
DIFF_DIRS=../out ../out1.3.3
DIFF_OUT=../diff



########################################################################
# CIBLES                                                               #
########################################################################


# make diff va lancer un diffrec sur les dossiers spécifiés plus haut
$(DIFF_OUT): $(DIFF_DIRS)
	@echo "===== Diffing ====="
	$(DIFF) $(DIFF_DIRS) $(DIFF_OUT)
diff: $(DIFF_OUT)
	@echo "===== Diffs up to date ====="


# make clean nettoie les dossiers créés
# ATTENTION: Ceci supprimera le dossier out, donc faites attentions à vos modifications
clean:
	@echo "===== Cleaning ====="
	rm -rf *~ $(DIFF_OUT)


