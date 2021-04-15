#!/usr/bin/env bash

# Backup gene panels from scout
# store the files at /fs1/resources/scout/gene_panel and update the symlink
# to the /fs1/resources/scout/gene_panel

ssh cmdscout2 docker-compose -f scout_stack/docker-compose.prod.yml exec -T mongodb mongoexport --host mongodb --db scout --collection gene_panel --jsonArray | ssh rs-fs1 "cat > /fs1/resources/scout/gene_panel/scout_gene_panel__$(date --iso-8601).json"
ssh rs-fs1 ln -s "/fs1/resources/scout/gene_panel/scout_gene_panel__$(date --iso-8601).json" "/fs1/resources/scout/scout_gene_panel__latest.json"
