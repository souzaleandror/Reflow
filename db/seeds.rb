# ruby encoding: utf-8
require 'faker'
require 'ffaker'
require 'time'

$ORDERNUMBER = 1024

puts 'START DESTROY ALL'
Admin.destroy_all
Department.destroy_all
Company.destroy_all
TypeContraction.destroy_all
Job.destroy_all
puts 'END DESTROY ALL'

puts 'START ADMIN'
VARADM1 = Admin.create(fullname: "John Lennon", email: "admin@admin.com", password: "admin123", sign_in_count: 1, current_sign_in_at: "01/01/2019", last_sign_in_at: "01/01/2019", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "`127.0.0.1", confirmed_at: "01/01/2019", confirmation_sent_at: "01/01/2019", unconfirmed_email: "")
VARADM2 = Admin.create(fullname: "Paul McCartney", email: "adm@admin.com", password: "admin123", sign_in_count: 1, current_sign_in_at: "01/01/2019", last_sign_in_at: "01/01/2019", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "`127.0.0.1", confirmed_at: "01/01/2019", confirmation_sent_at: "01/01/2019", unconfirmed_email: "")
VARADM3 = Admin.create(fullname: "Ringo Starr", email: "user@admin.com", password: "admin123", sign_in_count: 1, current_sign_in_at: "01/01/2019", last_sign_in_at: "01/01/2019", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "`127.0.0.1", confirmed_at: "01/01/2019", confirmation_sent_at: "01/01/2019", unconfirmed_email: "")
VARADM4 = Admin.create(fullname: "George Harrison", email: "example@admin.com", password: "admin123", sign_in_count: 1, current_sign_in_at: "01/01/2019", last_sign_in_at: "01/01/2019", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "`127.0.0.1", confirmed_at: "01/01/2019", confirmation_sent_at: "01/01/2019", unconfirmed_email: "")
VARADM4 = Admin.create(fullname: "Demo demo", email: "demo@admin.com", password: "admin123", sign_in_count: 1, current_sign_in_at: "01/01/2019", last_sign_in_at: "01/01/2019", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "`127.0.0.1", confirmed_at: "01/01/2019", confirmation_sent_at: "01/01/2019", unconfirmed_email: "")
puts 'END ADMIN'

puts 'START DEPARTMENT'
VARDEP1 = Department.create(name: "R.H.", variable_name: "R.H.", description: "Setor de R.H.", inactive: false)
VARDEP2 = Department.create(name: "T.I.", variable_name: "T.I.", description: "Setor de T.I.", inactive: false)
VARDEP3 = Department.create(name: "Marketing", variable_name: "Marketing", description: "Setor de Marketing", inactive: false)
VARDEP4 = Department.create(name: "Comercial", variable_name: "Comercial", description: "Setor de Comercial", inactive: false)
VARDEP5 = Department.create(name: "Outros", variable_name: "Outros", description: "Setor de Outros", inactive: false)
puts 'END DEPARTMENT'

puts 'START COMPANY'
VARCOM1 = Company.create(name: "Empresa X", variable_name: "Empresa X", description: "Empresa X", inactive: false)
VARCOM2 = Company.create(name: "Empresa Y", variable_name: "Empresa Y", description: "Empresa Y", inactive: false)
VARCOM3 = Company.create(name: "Empresa Z", variable_name: "Empresa Z", description: "Empresa Z", inactive: false)
puts 'END COMPANY'

puts 'START TYPE CONTRACTION'
VARTYPCON1 = TypeContraction.create(name: "CLT", variable_name: "CLT", description: "CLT", inactive: false)
VARTYPCON2 = TypeContraction.create(name: "PJ", variable_name: "PJ", description: "PJ", inactive: false)
VARTYPCON3 = TypeContraction.create(name: "CLT ou PJ", variable_name: "CLT ou PJ", description: "CLT ou PJ", inactive: false)
VARTYPCON4 = TypeContraction.create(name: "Prestacao de Serviço", variable_name: "Prestacao de Serviço", description: "Prestacao de Serviço", inactive: false)
VARTYPCON5 = TypeContraction.create(name: "Outros", variable_name: "Outros", description: "Outros", inactive: false)
puts 'END TYPE CONTRACTION'

puts 'START JOB'
VARJOB1 = Job.create(name_job: "Desenvolvedor(a) PHP Júnior", department: VARDEP2, company: VARCOM2, type_contraction: VARTYPCON3, role: "Júnior", description: "Nós somos um empresa jovem e divertida. Nosso escritório principal está em Londres e estamos procurando desenvolvedores PHP ambiciosos para juntar-se ao nosso time no Brasil (trabalho remoto).", mean_activity: "Trabalhando com um time de desenvolvedores, você será responsável por nossos três principais sites de serviços para pequenas e médias empresas. Você vai melhorar nossos sistemas existentes e criar novos sistemas.", requirement: "- Conhecimento de PHP orientado a objetos e frameworks MVC (nós usamos o Symfony);", desirable: "- Carta de apresentação;", email_send_cv: "empresay@example.com", salary: "R$ 2.000,00 a R$ 3.000,00", benefits: "Trabalho remoto", english: true, spanish: false, quantity_vacancy: 2, end_date: "01/10/2019", job_filled: false, inactive: false)

VARJOB2 = Job.create(name_job: "Gestor(a) de Social Media", department: VARDEP3, company: VARCOM1, type_contraction: VARTYPCON2, role: "Gestor", description: "O EUTEAJUDOAPASSAR está em busca de um(a) gestor(a) de redes sociais para compor o time. Se você é bem organizado(a), criativo(a), prestativo(a) e gosta de jogar em time que está ganhando, não perca a oportunidade de trabalhar em uma das empresas de coaching pra concursos que mais cresce no Brasil.", mean_activity: "Um(a) profissional de redes sociais que tenha experiência em editar vídeos, gerenciar publicações, planejar, organizar e executar as estratégias de marketing em redes sociais da empresa. Além de ajudar em outros processos na empresa, como edição de site, montagem de blog e otimização de anúncios.", requirement: "- Ter boa comunicação, saber planejar e organizar as tarefas é imprescindível, pois terá contato com alunos e interessados;", desirable: "- Saber operar Facebook Ads, Google Ads e Google Analytics", email_send_cv: "empresax@example.com", salary: "R$ 3.000,00 a R$ 4.000,00", benefits: "- Convenio Medico", english: false, spanish: true, quantity_vacancy: 1, end_date: "01/10/2019", job_filled: false, inactive: false)

VARJOB3 = Job.create(name_job: "SDR- Sales Development Representative", department: VARDEP4, company: VARCOM3, type_contraction: VARTYPCON1, role: "Representative", description: "Você gosta de ligar com pessoas? É motivado e proativo? Sabe ouvir as pessoas e seguir processos? Então, nós temos a vaga perfeita para você!", mean_activity: "Nós estamos buscando alguém para atuar especificamente em uma conta na área de turismo em Orlando na Flórida.", requirement: "- Superior completo;", desirable: "- Inglês avançado.", email_send_cv: "empresaz@example.com", salary: "R$ 5.000,00 a R$ 7.000,00", benefits: "- Convenio Ondotologico", english: true, spanish: true, quantity_vacancy: 3, end_date: "01/10/2019", job_filled: false, inactive: false)
puts 'START JOB'

