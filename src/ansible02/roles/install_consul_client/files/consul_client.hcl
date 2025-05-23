datacenter = "dc1"

node_name = "SELECT_HOSTNAME"       # Уникальное имя клиента в Consul-кластере (обычно совпадает с hostname).
server = false                      # Это клиент Consul (agent), а не сервер — не участвует в консенсусе и не хранит состояние кластера.
advertise_addr = "SELECT_CLIENT_IP" # IP, по которому другие узлы должны обращаться к данному agent'у.
retry_join = ["192.168.11.23"]      # Список серверных Consul-нод (или их IP). Клиент будет пытаться к ним присоединиться при старте.

ports {
  grpc = 8502                       # Включён GRPC-порт для сервисной mesh/Consul Connect (8502 по умолчанию).
}

data_dir = "/var/lib/consul"        # Директория для хранения данных и служебных файлов клиента.
bind_addr = "0.0.0.0"               # Agent слушает на всех сетевых интерфейсах. Можно сузить, если необходимо повысить безопасность.
log_level = "INFO"                  # Уровень логирования: INFO = стандартный, также доступны DEBUG/WARN/ERROR.

connect {
  enabled = true                    # Включена функция service mesh Consul Connect (шифрование, sidecar, mTLS).
}