*** Settings ***
Documentation     A computer files with the submenu with it
Library     SeleniumLibrary

*** Variables *** 
${computers}             css:ul[class='top-menu'] a[href='/computers']
${desktops}              css:h2[class='title'] a[href='/desktops']
${Notebooks}             css:h2[class='title'] a[href='/notebooks']
${Accessories}           css:h2[class='title'] a[href='/accessories']
${desktop_assert}        xpath://div[@class='product-name']//child::h1[normalize-space()='Build your own cheap computer']
${notebook_assert}       xpath://div[@class='product-name']//child::h1[normalize-space()='14.1-inch Laptop']
${Accessories_assert}    xpath://div[@class='product-name']

*** Keywords ***
Click the Desktops option
      Click Link     ${computers} 
      Click Link     ${desktops} 
      Select From List By Value      id:products-orderby     https://demowebshop.tricentis.com/desktops?orderby=5     #A-Z 
      Select From List By Value      id:products-pagesize   https://demowebshop.tricentis.com/desktops?orderby=5&pagesize=4     #4 
      Select From List By Value      id:products-viewmode   https://demowebshop.tricentis.com/desktops?orderby=5&pagesize=4&viewmode=grid    #Grid
      Click Link    //a[normalize-space()='Build your own cheap computer']
      Element Text Should Be    ${desktop_assert}      Build your own cheap computer      



Click the Notebooks option
      Click Link     ${computers} 
      Click Link    ${Notebooks} 
      Select From List By Value      id:products-orderby     https://demowebshop.tricentis.com/notebooks?orderby=10     #Price: Low to High  
      Select From List By Value      id:products-pagesize    https://demowebshop.tricentis.com/notebooks?orderby=10&pagesize=8    #8
      Select From List By Value      id:products-viewmode    https://demowebshop.tricentis.com/notebooks?orderby=10&viewmode=grid   #Grid
      Click Link    //a[normalize-space()='14.1-inch Laptop']
      Element Text Should Be     ${notebook_assert}    14.1-inch Laptop



Click the Accessories option
      Click Link     ${computers}
      Click Link     ${Accessories} 
      Select From List By Value      id:products-orderby     https://demowebshop.tricentis.com/accessories?orderby=15    #Created on  
      Select From List By Value      id:products-pagesize    https://demowebshop.tricentis.com/accessories?orderby=15&pagesize=8   #8
      Select From List By Value      id:products-viewmode    https://demowebshop.tricentis.com/accessories?orderby=15&viewmode=grid  #grid
      Click Link    //a[normalize-space()='TCP Self-Paced Training additional month']
      Element Text Should Be     ${Accessories_assert}        TCP Self-Paced Training additional month



    