resource "aws_instance" "amb-prod" {
  count = 3 #quantidade de VMS criadas
  ami           = "ami-0b6c6ebed2801a5cb" #código do sistema operacional
  instance_type = "t2.micro" #tipo da máquina
  key_name = "Terraform" #nome do acesso remoto - aws
  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id,
    aws_security_group.allow_http.id,
    aws_security_group.allow_egress.id,
    aws_security_group.allow_https.id
  ] #permissão de habilitar portas
  user_data = file("script.sh") #script para instalar o apache e subir o site

  tags = {
    Name = "amb-prod-${count.index}" #esse count muda o número de acordo com a VM criada
  }
}