library(RColorBrewer)
library(pheatmap)
library(grid)
library(gtable)

m = read.csv("C:/Users/10050/Downloads/rscu.csv",row.names = 1)

# RColorBrewer调色板
brewer_colors <- brewer.pal(9, "YlGnBu")
color_palette <- colorRampPalette(brewer_colors)(15) 

# pheatmap
p=pheatmap(m,
             cluster_rows = TRUE,  # 对行进行聚类
             cluster_cols = TRUE,  # 对列进行聚类
             main = "RSCU",
             fontfamily="serif",
             fontsize=12,
             color = color_palette)  


# gtable
p2 <- p$gtable
p2$grobs[[6]]$gp=grid::gpar(fontface="italic")
grid.newpage()
grid.draw(p2)

