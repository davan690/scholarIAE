
# install.packages('goodpractice')
package_path <- system.file(package = 'devex')

# Check package
library(goodpractice)
gp(package_path)