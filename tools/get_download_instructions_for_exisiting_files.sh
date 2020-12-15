language=$1
cmdfile="get-existing-translations"
find locale/${language} -type f -name "*.po" -printf "%f\n" |sort > ${cmdfile}.sh
command="s/(.*)\.po/tx pull -f -l ${language} -r osgeolive\.\$1/"
perl -pi -e "${command}" ${cmdfile}.sh
perl -pi -e 's/(.*osgeolive\.)(.*)(overview|quickstart)/$1$3--$2$3/' ${cmdfile}.sh

