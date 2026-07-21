// Définition des acronymes (équivaut à \newacronym dans acronymes.tex)
// Utilisation dans le texte : #gls("ndvi")
#let acronymes = (
  (
    key: "ndvi", short: "NDVI",
    long: [#emph[Normalized Difference Vegetation Index] (indice de végétation par différence normalisée)],
  ),
  (key: "rvi", short: "RVI", long: [#emph[Ratio Vegetation Index]]),
  (key: "savi", short: "SAVI", long: [#emph[Soil-Adjusted Vegetation Index]]),
  (key: "osavi", short: "OSAVI", long: [#emph[Optimized Soil-Adjusted Vegetation Index]]),
  (key: "msavi", short: "MSAVI", long: [#emph[Modified Soil-Adjusted Vegetation Index]]),
  (key: "ndre", short: "NDRE", long: [#emph[Normalized Difference Red Edge Index]]),
  (key: "ndwi", short: "NDWI", long: [#emph[Normalized Difference Water Index]]),
  (key: "msi", short: "MSI", long: [#emph[Moisture Stress Index]]),
  (key: "oms", short: "OMS", long: [Organisation mondiale de la santé]),
  (key: "onu", short: "ONU", long: [Organisation des Nations unies]),
  (key: "sig", short: "SIG", long: [Systèmes d'information géographique]),
)
