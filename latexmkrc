# $out_dir = 'build';
# $aux_dir = 'build';
$default_files = ("texplate.tex");

#
# glossaries/glossaries-extra braucht einen Extraschritt...
#

# Abhängigkeiten hinzufügen
add_cus_dep('glo-abr', 'gls-abr', 0, 'run_makeglossaries');
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

# makeglossaries ausführen
sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries -q $_[0]";
  }
  else {
    system "makeglossaries $_[0]";
  };
}

# Dateierweiterungen hinzufügen
push @generated_exts, 'glo-abr', 'gls-abr', 'glg-abr';
push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
$clean_ext .= ' %R.ist %R.xdy';

