datacenter = "dc1"
server = true                    # Запуск в режиме сервера
bootstrap_expect = 1             # Ожидаем один сервер (не кластер)
node_name = "consul-server"      # Имя ноды/сервера

advertise_addr = "192.168.11.23" # IP для анонса другим нодам
bind_addr = "0.0.0.0"            # Слушать на всех интерфейсах
client_addr = "0.0.0.0"          # API/Web UI доступен со всех интерфейсов

data_dir = "/var/lib/consul"     # Где хранить базу Consul
log_level = "INFO"               # Уровень логов

ui = true                        # Включить Web UI

connect {
    enabled = true               # Включить Consul Connect (service mesh)
}