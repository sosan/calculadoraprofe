@echo off
rem EJECUTAR EN LA CARPETA STATIC
mkdir sass
cd sass
mkdir base components layouts themes utilities vendors views
cd base
type _reset.scss > _reset.scss
type _typo.scss > _typo.scss
cd ..
cd components
type _buttons.scss > _buttons.scss
type _sliders.scss > _sliders.scss
cd ..
cd layouts
type _footer.scss > _footer.scss
type _forms.scss > _forms.scss
type _grid.scss > _grid.scss
type _header.scss > _header.scss
type _nav.scss > _nav.scss
cd ..
cd themes
type _red.scss > _red.scss
type _theme.scss > _theme.scss
cd ..
cd utilities
type _functions.scss > _functions.scss
type _mixings.scss > _mixings.scss
type _variables.scss > _variables.scss
cd ..
cd vendors
type _bulma.scss > _bulma.scss
type _otroframework.scss > _otroframework.scss
cd ..
cd views
type _contact.scss > _contact.scss
type _home.scss > _home.scss
cd ..
echo @import 'base/reset'; > main.scss
echo @import 'vendors/bulma'; >> main.scss
echo @import "vendors/otroframework"; >> main.scss
echo @import 'bases/typo'; >> main.scss

rem utilites
echo @import 'utilities/variables'; >> main.scss
echo @import 'utilities/functions'; >> main.scss
echo @import 'utilities/mixins'; >> main.scss
echo @import 'utilities/placeholders'; >> main.scss

rem layout

echo @import "layout/nav"; >> main.scss
echo @import "layout/footer"; >> main.scss
echo @import "layout/forms"; >> main.scss
echo @import "layout/grid"; >> main.scss
echo @import "layout/header"; >> main.scss

rem components

echo @import "components/buttons"; >> main.scss
echo @import "components/sliders"; >> main.scss


rem themes

echo @import "themes/red"; >> main.scss
echo @import "themes/theme"; >> main.scss
