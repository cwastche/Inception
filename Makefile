all:
		docker compose -f ./srcs/docker-compose.yml up -d --build

down:
		docker compose -f ./scrs/docker-compose.yml down
.PHONY: all