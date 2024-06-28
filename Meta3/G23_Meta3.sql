--------------------------------------------------------
--  File created - domingo-junho-02-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARMAZEM
--------------------------------------------------------

  CREATE TABLE "AABDG23"."ARMAZEM" 
   (	"ID_ARMAZEM" VARCHAR2(20 BYTE), 
	"MORADA" VARCHAR2(200 BYTE), 
	"COD_POSTAL" CHAR(8 BYTE), 
	"CAPDISPONIVEL" FLOAT(38), 
	"CAPMAXIMA" FLOAT(38)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "AABDG23"."CLIENTE" 
   (	"ID_CLIENTE" VARCHAR2(20 BYTE), 
	"NIF" VARCHAR2(9 BYTE), 
	"NOME" VARCHAR2(100 BYTE), 
	"MORADA" VARCHAR2(200 BYTE), 
	"TELEFONE" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTE_PEDIDO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."CLIENTE_PEDIDO" 
   (	"CLIENTE_ID_CLIENTE" VARCHAR2(20 BYTE), 
	"PEDIDO_ID_PEDIDO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DATA_ESTADO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."DATA_ESTADO" 
   (	"DATAHORA" DATE, 
	"ESTADO_ID_ESTADO" VARCHAR2(20 BYTE), 
	"PEDIDO_ID_PEDIDO" VARCHAR2(20 BYTE), 
	"PROCESSO" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ESTADO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."ESTADO" 
   (	"ID_ESTADO" VARCHAR2(20 BYTE), 
	"DESCRICAO" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOTORISTA
--------------------------------------------------------

  CREATE TABLE "AABDG23"."MOTORISTA" 
   (	"ID_MOTORISTA" VARCHAR2(20 BYTE), 
	"NOME" VARCHAR2(100 BYTE), 
	"NIF" VARCHAR2(512 BYTE), 
	"N_SS" VARCHAR2(20 BYTE), 
	"N_CC" VARCHAR2(20 BYTE), 
	"N_SNS" VARCHAR2(20 BYTE), 
	"SALARIO" FLOAT(8), 
	"MORADA" VARCHAR2(200 BYTE), 
	"TELEFONE" VARCHAR2(9 BYTE), 
	"PREMIO" NUMBER, 
	"PAGAMENTO" NUMBER, 
	"N_VIAGENS" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PEDIDO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."PEDIDO" 
   (	"ID_PEDIDO" VARCHAR2(20 BYTE), 
	"D_H_R" DATE, 
	"REMETENTE" VARCHAR2(200 BYTE), 
	"DESTINATARIO" VARCHAR2(200 BYTE), 
	"PESO" FLOAT(8), 
	"VOLUME" FLOAT(8), 
	"CUSTO" FLOAT(8), 
	"TIPOMERC_ID_TM" VARCHAR2(20 BYTE), 
	"PRIORIDADE" VARCHAR2(512 BYTE), 
	"TEMP_PREV" VARCHAR2(10 BYTE), 
	"N_TRANSPORTES" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PEDIDO_VIAGEM
--------------------------------------------------------

  CREATE TABLE "AABDG23"."PEDIDO_VIAGEM" 
   (	"PEDIDO_ID_PEDIDO" VARCHAR2(20 BYTE), 
	"VIAGEM_ID_VIAGEM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROTA
--------------------------------------------------------

  CREATE TABLE "AABDG23"."ROTA" 
   (	"ID_ROTA" VARCHAR2(512 BYTE), 
	"DIA_HORA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROTA_TROCO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."ROTA_TROCO" 
   (	"ROTA_ID_ROTA" VARCHAR2(512 BYTE), 
	"TROCO_ID_TROCO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SERVICO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."SERVICO" 
   (	"ID_SERVICO" VARCHAR2(20 BYTE), 
	"PRECO_KM" FLOAT(8), 
	"DURA_MAX" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SERVICO_PEDIDO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."SERVICO_PEDIDO" 
   (	"SERVICO_ID_SERVICO" VARCHAR2(20 BYTE), 
	"PEDIDO_ID_PEDIDO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TIPOMERC
--------------------------------------------------------

  CREATE TABLE "AABDG23"."TIPOMERC" 
   (	"ID_TM" VARCHAR2(20 BYTE), 
	"DESCRICAO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TIPOMERC_TIPOMERC
--------------------------------------------------------

  CREATE TABLE "AABDG23"."TIPOMERC_TIPOMERC" 
   (	"TIPOMERC_ID_TM" VARCHAR2(20 BYTE), 
	"TIPOMERC_ID_TM1" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TROCO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."TROCO" 
   (	"ID_TROCO" VARCHAR2(20 BYTE), 
	"ORIGEM" VARCHAR2(30 BYTE), 
	"DESTINO" VARCHAR2(30 BYTE), 
	"DISTANCIA" FLOAT(8), 
	"DURAMEDIA" FLOAT(8), 
	"DURAMAX" FLOAT(8), 
	"ARMAZEM_ID_ARMAZEM" VARCHAR2(20 BYTE), 
	"ARMAZEM_ID_ARMAZEM1" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VEICULO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."VEICULO" 
   (	"ID_VEICULO" VARCHAR2(20 BYTE), 
	"MATRICULA" VARCHAR2(6 BYTE), 
	"ANO" NUMBER(*,0), 
	"MARCA" VARCHAR2(30 BYTE), 
	"ESPECIAL" NUMBER(*,0), 
	"TIPO" VARCHAR2(50 BYTE), 
	"MODELO" VARCHAR2(20 BYTE), 
	"PESOMERCMAX" FLOAT(8), 
	"VOLMERCMAX" FLOAT(8), 
	"VOL_OCUPADO" NUMBER(10,0), 
	"PESO_OCUPADO" NUMBER(10,0), 
	"DATA_ULTIMA_REVISAO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VEICULO_ARMAZEM
--------------------------------------------------------

  CREATE TABLE "AABDG23"."VEICULO_ARMAZEM" 
   (	"VEICULO_ID_VEICULO" VARCHAR2(20 BYTE), 
	"ARMAZEM_ID_ARMAZEM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VEICULO_TIPOMERC
--------------------------------------------------------

  CREATE TABLE "AABDG23"."VEICULO_TIPOMERC" 
   (	"VEICULO_ID_VEICULO" VARCHAR2(20 BYTE), 
	"TIPOMERC_ID_TM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VIAGEM
--------------------------------------------------------

  CREATE TABLE "AABDG23"."VIAGEM" 
   (	"ID_VIAGEM" VARCHAR2(20 BYTE), 
	"DISTANCIA" FLOAT(8), 
	"DHPARTIDA" DATE, 
	"NPEDIDOS" NUMBER(*,0), 
	"VOLOCUPADO" FLOAT(8), 
	"DHPREVINICIO" DATE, 
	"DHPREVFIM" DATE, 
	"ARMAZEM_ID_ARMAZEM" VARCHAR2(20 BYTE), 
	"ARMAZEM_ID_ARMAZEM1" VARCHAR2(20 BYTE), 
	"TROCO_ID_TROCO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VIAGEM_ARMAZEM_ENTREGA
--------------------------------------------------------

  CREATE TABLE "AABDG23"."VIAGEM_ARMAZEM_ENTREGA" 
   (	"ID_VIAGEM" VARCHAR2(20 BYTE), 
	"ID_ARMAZEM_ENTREGA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VIAGEM_ARMAZEM_RECOLHA
--------------------------------------------------------

  CREATE TABLE "AABDG23"."VIAGEM_ARMAZEM_RECOLHA" 
   (	"ID_VIAGEM" VARCHAR2(20 BYTE), 
	"ID_ARMAZEM_RECOLHA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VIAGEM_MOTORISTA
--------------------------------------------------------

  CREATE TABLE "AABDG23"."VIAGEM_MOTORISTA" 
   (	"VIAGEM_ID_VIAGEM" VARCHAR2(20 BYTE), 
	"MOTORISTA_ID_MOTORISTA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VIAGEM_ROTA
--------------------------------------------------------

  CREATE TABLE "AABDG23"."VIAGEM_ROTA" 
   (	"VIAGEM_ID_VIAGEM" VARCHAR2(20 BYTE), 
	"ROTA_ID_ROTA" VARCHAR2(512 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VIAGEM_VEICULO
--------------------------------------------------------

  CREATE TABLE "AABDG23"."VIAGEM_VEICULO" 
   (	"VIAGEM_ID_VIAGEM" VARCHAR2(20 BYTE), 
	"VEICULO_ID_VEICULO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View VIEW_A
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_A" ("IDPEDIDO", "DATARECOLHA", "ARMAZEM_RECOLHA", "ARMAZEM_ENTREGA", "ESTADO") AS 
  SELECT 
    -- Seleciona o ID do pedido
        p.id_pedido           AS idpedido,
    -- Seleciona a data e hora da recolha
        de.datahora           AS datarecolha,
    -- Seleciona o ID do armazém de recolha
        v.armazem_id_armazem  AS armazem_recolha,
    -- Seleciona o ID do armazém de entrega
        v.armazem_id_armazem1 AS armazem_entrega,
    -- Seleciona a descrição do estado
        e.descricao           AS estado
    FROM 
    -- Tabelas envolvidas: PEDIDO, VIAGEM_ARMAZEM_RECOLHA, VIAGEM, DATA_ESTADO, ESTADO, TROCO, ARMAZEM,
    -- VIAGEM_ARMAZEM_ENTREGA, SERVICO_PEDIDO, SERVICO
        pedido         p,
        viagem         v,
        data_estado    de,
        estado         e,
        pedido_viagem  pv,
        servico_pedido sp,
        servico        s,
        armazem
    WHERE 
    -- Cláusulas de junção:
    -- Vincula o ID do pedido com o ID da viagem de recolha
            p.id_pedido = pv.pedido_id_pedido
        AND e.id_estado = 'E2'
    -- Vincula o ID da viagem de recolha com o ID da viagem
        AND pv.viagem_id_viagem = v.id_viagem
    -- Vincula o ID do pedido com o ID da data de estado (data da recolha)
        AND p.id_pedido = de.pedido_id_pedido
    -- Vincula o ID do estado (da recolha) com o ID do estado
        AND de.estado_id_estado = e.id_estado
    -- Vincula o ID do pedido com o ID do serviço do pedido 
        AND p.id_pedido = sp.pedido_id_pedido
    -- Vincula o ID do serviço do pedido com o ID do serviço 
        AND sp.servico_id_servico = s.id_servico
        AND v.armazem_id_armazem = armazem.id_armazem
    -- Restrições:
    -- Seleciona apenas os pedidos recolhidos ontem
        AND p.d_h_r >= trunc(sysdate) - 1  
    -- Exclui os pedidos com tipo de serviço Urgente
        AND s.id_servico != 'Urgente'
        AND upper(armazem.morada) LIKE '%Lisboa%'  -- Seleciona apenas pedidos com armazém de recolha em Lisboa
    ORDER BY
        de.datahora
;
--------------------------------------------------------
--  DDL for View VIEW_B
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_B" ("ID_VIAGEM", "VEICULO", "TROCO", "HORARIO_PARTIDA", "HORARIO_CHEGADA", "DURACAO_MINUTOS", "KMS_PERCORRIDOS") AS 
  SELECT
    -- Seleciona o ID da viagem.
        viagem.id_viagem,
    -- Seleciona a matrícula do veículo.
        veiculo.matricula                                          AS veiculo,
    -- Seleciona o ID do troco.
        troco.id_troco                                             AS troco,
    -- Converte o horário de partida para o formato 'DD/MM/YYYY HH24:MI:SS'.
        to_char(viagem.dhpartida, 'DD/MM/YYYY HH24:MI:SS')         AS horario_partida,
    -- Converte o horário de chegada para o formato 'DD/MM/YYYY HH24:MI:SS'. (será alterado para data do estado em armazém)
        to_char(data_estado.datahora, 'DD/MM/YYYY HH24:MI:SS')     AS horario_chegada,
    -- Calcula a duração da viagem em minutos.
        round((data_estado.datahora - viagem.dhpartida) * 24 * 60) AS duracao_minutos,
    -- Seleciona a distância percorrida em quilômetros.
        viagem.distancia                                           AS kms_percorridos
    FROM
    -- Tabela 'pedido' é usada para identificar um pedido específico.
        pedido,
    -- Tabela 'pedido_viagem' relaciona pedidos com viagens.
        pedido_viagem,
    -- Tabela 'viagem' contém informações sobre viagens.
        viagem,
    -- Tabela 'viagem_veiculo' relaciona viagens com veículos.
        viagem_veiculo,
    -- Tabela 'veiculo' contém informações sobre veículos.
        veiculo,
    -- Tabela 'troco' contém informações sobre trocos associados às viagens.
        troco,
    -- Tabela 'data_estado' contém informações sobre o estado de um pedido em determinado momento.
        data_estado
    WHERE
    -- Filtra pelo ID do pedido desejado.
            pedido.id_pedido = '2023041105'
    -- Filtra pelo estado 'E2', EM ARMAZEM em 'data_estado', a hora de chegada de uma viagem e quando o estado é em armazem
       AND data_estado.estado_id_estado = 'E2'
    -- Relaciona o pedido com 'pedido_viagem'.
        AND pedido.id_pedido = pedido_viagem.pedido_id_pedido
    -- Relaciona a viagem com 'pedido_viagem'.
        AND pedido_viagem.viagem_id_viagem = viagem.id_viagem
    -- Relaciona o pedido com 'data_estado'.
        AND pedido_viagem.pedido_id_pedido = data_estado.pedido_id_pedido
    -- Relaciona a viagem com 'viagem_veiculo'.
        AND viagem.id_viagem = viagem_veiculo.viagem_id_viagem
    -- Relaciona o veículo com 'viagem_veiculo'.
        AND viagem_veiculo.veiculo_id_veiculo = veiculo.id_veiculo
    -- Relaciona a viagem com o troco.
        AND viagem.troco_id_troco = troco.id_troco
    -- Filtra os registos onde a datahora em 'data_estado' é posterior à data de partida da viagem.
        AND data_estado.datahora > viagem.dhpartida
    ORDER BY
    -- Ordena os resultados pela data de partida da viagem.
        viagem.dhpartida
;
--------------------------------------------------------
--  DDL for View VIEW_C
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_C" ("IDPEDIDO", "TIPOSERVICO", "DATAPEDIDO", "DATARECOLHA", "DATAENTRADA", "TEMPORESTANTE") AS 
  SELECT
    -- Seleciona o ID do pedido como 'idpedido'.
        p.id_pedido                                    AS idpedido,
    -- Seleciona o ID do serviço como 'tiposervico'.
        s.id_servico                                   AS tiposervico,
    -- Converte a data e hora do pedido para o formato 'DD/MM/YYYY HH24:MI'.
        to_char(p.d_h_r, 'DD/MM/YYYY HH24:MI')         AS datapedido,
    -- Converte a data e hora de recolha para o formato 'DD/MM/YYYY HH24:MI'.
        to_char(de.datahora, 'DD/MM/YYYY HH24:MI')     AS datarecolha,
    -- Converte a data e hora de entrada prevista na viagem para o formato 'DD/MM/YYYY HH24:MI'.
        to_char(v.dhprevinicio, 'DD/MM/YYYY HH24:MI')  AS dataentrada,
    -- Calcula o tempo restante até a entrada prevista na viagem em minutos.
        round((v.dhprevinicio - sysdate) * 24 * 60, 0) AS temporestante
    FROM
    -- Tabela 'pedido' é usada para identificar pedidos.
        pedido      p,
    -- Tabela 'servico' contém informações sobre tipos de serviço.
        servico     s,
    -- Tabela 'viagem' contém informações sobre viagens.
        viagem      v,
    -- Tabela 'data_estado' contém informações sobre o estado de um pedido em determinado momento.
        data_estado de,
    -- Tabela 'armazem' contém informações sobre armazéns.
        armazem     a
    WHERE
    -- Filtra os pedidos com tipo de mercadoria igual ao ID do serviço.
            p.tipomerc_id_tm = s.id_servico
    -- Relaciona o pedido com 'data_estado'.
        AND p.id_pedido = de.pedido_id_pedido
    -- Filtra pelos estados 'E2' em 'data_estado'.
        AND de.estado_id_estado = 'E2'
    -- Relaciona a viagem com o armazém.
        AND v.armazem_id_armazem1 = a.id_armazem
    -- Verifica se a data de recolha está dentro da semana atual.
        AND to_char(de.datahora, 'IW') = to_char(sysdate, 'IW')
    -- Filtra pelo endereço do armazém.
        AND a.morada = 'R.Teixeira Guedes,Santarem'
    ORDER BY
    -- Ordena os resultados pela coluna 6 (temporestante) em ordem decrescente.
        6 DESC
;
--------------------------------------------------------
--  DDL for View VIEW_D
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_D" ("ARMAZEM", "IDPEDIDO", "TIPOSERVICO", "DATAPEDIDO", "DATAENTRADA", "TEMPORESTANTE") AS 
  SELECT DISTINCT 
    armazem.id_armazem                                     AS armazem,
    -- Seleciona o ID do pedido.
    pedido.id_pedido                                       AS idpedido,
    -- Seleciona o ID do tipo de serviço.
    servico_pedido.servico_id_servico                      AS tiposervico,
    -- Seleciona a data e hora do pedido.
    pedido.d_h_r                                           AS datapedido,
    -- Seleciona a data e hora do estado do pedido (entrada no armazém).
    data_estado.datahora                                   AS dataentrada,
    -- Calcula o tempo restante em minutos entre a entrada no armazém e a data/hora atual.
    ROUND((sysdate - data_estado.datahora) * 24 * 60)      AS temporestante
-- Tabelas envolvidas na consulta.
FROM
    armazem,
    pedido,
    servico,
    data_estado,
    pedido_viagem,
    servico_pedido,
    viagem 
-- Condições de junção.
WHERE
        -- Condição de junção entre tabelas
        armazem.id_armazem = viagem.armazem_id_armazem
    AND pedido.id_pedido = pedido_viagem.pedido_id_pedido
    AND pedido.id_pedido = data_estado.pedido_id_pedido
    AND pedido_viagem.viagem_id_viagem = viagem.id_viagem
    AND data_estado.estado_id_estado = 'E2' -- Considera apenas o estado E2 (no armazém)
    AND data_estado.processo = 'ON'         -- Considera apenas o estado do processo 'ON'
    AND servico_pedido.pedido_id_pedido = pedido.id_pedido
-- Ordena os resultados pelo tempo restante em ordem decrescente.
ORDER BY
    temporestante DESC
;
--------------------------------------------------------
--  DDL for View VIEW_E
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_E" ("ARMAZEM", "TIPOMERCADORIA", "VOLUMEMEDIO") AS 
  SELECT
    -- Seleciona o ID do armazém e dá-lhe o alias 'armazem'.
        a.id_armazem  AS armazem,
    -- Seleciona a descrição do tipo de mercadoria e dá-lhe o alias 'tipomercadoria'.
        t.descricao   AS tipomercadoria,
    -- Calcula a média do volume das mercadorias e dá-lhe o alias 'volumemedio'.
        AVG(p.volume) AS volumemedio
    FROM
    -- Tabela 'armazem' é renomeada como 'a'.
        armazem                a,
    -- Tabela 'tipomerc' é renomeada como 't'.
        tipomerc               t,
    -- Tabela 'pedido' é renomeada como 'p'.
        pedido                 p,
    -- Tabela 'pedido_viagem' é renomeada como 'pv'.
        pedido_viagem          pv,
    -- Tabela 'viagem' é renomeada como 'v'.
        viagem                 v,
    -- Tabela 'viagem_armazem_recolha' é renomeada como 'varec'.
        viagem_armazem_recolha varec
    WHERE
    -- Relaciona o ID do armazém na tabela 'armazem' com o ID do armazém na tabela 'viagem'.
            a.id_armazem = v.armazem_id_armazem
    -- Relaciona o ID do pedido na tabela 'pedido' com o ID do pedido na tabela 'pedido_viagem'.
        AND p.id_pedido = pv.pedido_id_pedido
    -- Relaciona o ID da viagem na tabela 'pedido_viagem' com o ID da viagem na tabela 'viagem'.
        AND pv.viagem_id_viagem = v.id_viagem
    -- Relaciona o ID da viagem na tabela 'viagem_armazem_recolha' com o ID da viagem na tabela 'viagem'.
        AND varec.id_viagem = v.id_viagem
    -- Relaciona o ID do tipo de mercadoria na tabela 'tipomerc' com o ID do tipo de mercadoria na tabela 'pedido'.
        AND t.id_tm = p.tipomerc_id_tm
    -- Filtra os armazéns que estão localizados em Coimbra.
        AND upper(a.morada) LIKE '%COIMBRA%'
    -- Filtra os anos de 2021 e 2022 para as viagens.
        AND to_char(v.dhprevinicio, 'YYYY') IN ( '2021', '2022' )
    GROUP BY
    -- Agrupa os resultados pelo ID do armazém e pela descrição do tipo de mercadoria.
        a.id_armazem,
        t.descricao
    ORDER BY
    -- Ordena os resultados pela média do volume das mercadorias em ordem decrescente.
        volumemedio DESC
;
--------------------------------------------------------
--  DDL for View VIEW_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_F" ("NUM_PEDIDOS_TEMP_ARM", "MEDIA_TEMPO_RESTANTE") AS 
  SELECT
    -- Conta o número de pedidos distintos temporariamente no armazém e dá-lhe o alias 'num_pedidos_temp_arm'.
        COUNT(DISTINCT clp.pedido_id_pedido) AS num_pedidos_temp_arm,
    -- Calcula a média do tempo restante dos pedidos, convertendo o tempo previsto para número e dá-lhe o alias 'media_tempo_restante'.
        AVG(TO_NUMBER(p.temp_prev))          AS media_tempo_restante
    FROM
    -- Tabela 'data_estado' é renomeada como 'est'.
        data_estado    est,
    -- Tabela 'pedido' é renomeada como 'p'.
        pedido         p,
    -- Tabela 'cliente_pedido' é renomeada como 'clp'.
        cliente_pedido clp,
    -- Tabela 'estado' é renomeada como 'e'.
        estado         e,
    -- Tabela 'armazem' é renomeada como 'amo'.
        armazem        amo
    WHERE
    -- Relaciona o ID do pedido na tabela 'data_estado' com o ID do pedido na tabela 'pedido'.
            est.pedido_id_pedido = p.id_pedido
    -- Relaciona o ID do pedido na tabela 'pedido' com o ID do pedido na tabela 'cliente_pedido'.
        AND p.id_pedido = clp.pedido_id_pedido
    -- Relaciona o ID do estado na tabela 'data_estado' com o ID do estado na tabela 'estado'.
        AND est.estado_id_estado = e.id_estado
    -- Filtra os registos onde a descrição do estado é 'E2'.
        AND e.descricao = 'E2'
    -- Filtra os registos onde a capacidade disponível dividida pela capacidade máxima do armazém é igual ao mínimo dessa proporção multiplicado por 100.
        AND amo.capdisponivel / amo.capmaxima * 100 = (
            SELECT
                MIN(amo.capdisponivel / amo.capmaxima) * 100
            FROM
                armazem amo
        )
;
--------------------------------------------------------
--  DDL for View VIEW_G
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_G" ("CIDADE", "TIPO_MERCADORIA", "NUM_TRANSPORTES", "VOLUME_TRANSPORTADO") AS 
  SELECT
    -- Seleciona a cidade.
        cidade,
    -- Seleciona o tipo de mercadoria.
        tipo_mercadoria,
    -- Seleciona o número de transportes.
        num_transportes,
    -- Seleciona o volume transportado.
        volume_transportado
    FROM
        (
            SELECT
            -- Seleciona a morada do armazém e dá-lhe o alias 'cidade'.
                a.morada        AS cidade,
            -- Seleciona a descrição do tipo de mercadoria e dá-lhe o alias 'tipo_mercadoria'.
                tm.descricao    AS tipo_mercadoria,
            -- Seleciona o número de transportes e dá-lhe o alias 'num_transportes'.
                p.n_transportes AS num_transportes,
            -- Calcula a soma do volume das mercadorias e dá-lhe o alias 'volume_transportado'.
                SUM(p.volume)   AS volume_transportado,
            -- A função RANK() atribui uma classificação aos registos com base na soma do volume das mercadorias em ordem decrescente.
                RANK()
                OVER(
                    ORDER BY
                        SUM(p.volume) DESC
                )               AS rank_volume
            FROM
            -- Tabela 'pedido' é renomeada como 'p'.
                pedido        p,
            -- Tabela 'tipomerc' é renomeada como 'tm'.
                tipomerc      tm,
            -- Tabela 'armazem' é renomeada como 'a'.
                armazem       a,
            -- Tabela 'data_estado' é renomeada como 'de'.
                data_estado   de,
            -- Tabela 'estado' é renomeada como 'e'.
                estado        e,
            -- Tabela 'viagem' é renomeada como 'v'.
                viagem        v,
            -- Tabela 'pedido_viagem' é renomeada como 'pedv'.
                pedido_viagem pedv
            WHERE
            -- Relaciona o ID do tipo de mercadoria na tabela 'pedido' com o ID do tipo de mercadoria na tabela 'tipomerc'.
                    p.tipomerc_id_tm = tm.id_tm
            -- Relaciona o ID do pedido na tabela 'pedido' com o ID do pedido na tabela 'pedido_viagem'.
                AND p.id_pedido = pedv.pedido_id_pedido
            -- Relaciona o ID da viagem na tabela 'viagem' com o ID da viagem na tabela 'pedido_viagem'.
                AND v.id_viagem = pedv.viagem_id_viagem
            -- Relaciona o ID do armazém na tabela 'viagem' com o ID do armazém na tabela 'armazem'.
                AND v.armazem_id_armazem1 = a.id_armazem
            -- Filtra os registos onde o número de transportes é maior que 3.
                AND p.n_transportes > 3
            -- Filtra os registos para incluir apenas pedidos do ano anterior.
                AND EXTRACT(YEAR FROM p.d_h_r) = EXTRACT(YEAR FROM sysdate) - 1
            GROUP BY
            -- Agrupa os resultados pela morada do armazém, descrição do tipo de mercadoria e número de transportes.
                a.morada,
                tm.descricao,
                p.n_transportes
        )
    WHERE
    -- Filtra os resultados para incluir apenas as duas cidades com o maior volume transportado.
        rank_volume <= 2
    ORDER BY
    -- Ordena os resultados pelo volume transportado em ordem decrescente.
        volume_transportado DESC
;
--------------------------------------------------------
--  DDL for View VIEW_H
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_H" ("ID_VEICULO", "MATRICULA", "MARCA", "MODELO", "NUMERO_VIAGENS") AS 
  SELECT
    -- Seleciona o ID do veículo.
        vei.id_veiculo,
    -- Seleciona a matrícula do veículo.
        vei.matricula,
    -- Seleciona a marca do veículo.
        vei.marca,
    -- Seleciona o modelo do veículo.
        vei.modelo,
    -- Seleciona o número de viagens realizadas.
        p.n_transportes AS numero_viagens
    FROM
    -- Tabela 'viagem_veiculo' é renomeada como 'vv'.
        viagem_veiculo vv,
    -- Tabela 'viagem' é renomeada como 'v'.
        viagem         v,
    -- Tabela 'veiculo' é renomeada como 'vei'.
        veiculo        vei,
    -- Tabela 'pedido' é renomeada como 'p'.
        pedido         p
    WHERE
        -- Relaciona o ID da viagem na tabela 'viagem_veiculo' com o ID da viagem na tabela 'viagem'.
            vv.viagem_id_viagem = v.id_viagem
    -- Filtra os registos onde a distância da viagem é maior que 200.
        AND v.distancia > 200
    -- Filtra os registos onde o volume ocupado do veículo é superior a 80% do volume máximo.
        AND vei.vol_ocupado > 0.8 * vei.volmercmax
    -- Filtra os registos para incluir apenas viagens do mês anterior.
        AND EXTRACT(MONTH FROM v.dhpartida) = EXTRACT(MONTH FROM sysdate) - 1
    -- Relaciona o ID do veículo na tabela 'veiculo' com o ID do veículo na tabela 'viagem_veiculo'.
        AND vei.id_veiculo = vv.veiculo_id_veiculo
    -- Filtra os registos para incluir apenas veículos que transportam animais vivos.
        AND vei.id_veiculo IN (
            SELECT
                vei.id_veiculo
            FROM
            -- Tabela 'veiculo_tipomerc' é renomeada como 'vtm'.
                veiculo_tipomerc vtm,
            -- Tabela 'tipomerc' é renomeada como 'tm'.
                 tipomerc         tm
            WHERE
                -- Relaciona o ID do veículo na tabela 'veiculo_tipomerc' com o ID do veículo na tabela 'veiculo'.
                    vtm.veiculo_id_veiculo = vei.id_veiculo
            -- Filtra os registos para incluir apenas tipos de mercadoria 'Animais vivos'.
                AND tm.descricao = 'Animais vivos'
        )
    ORDER BY
    -- Ordena os resultados pelo número de viagens em ordem decrescente.
        5 DESC
;
--------------------------------------------------------
--  DDL for View VIEW_I
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_I" ("ARMAZEM", "Nº TRANSPORTES", "VOLUMETOTAL", "PESOTOTAL") AS 
  SELECT
        "ARMAZEM","Nº TRANSPORTES","VOLUMETOTAL","PESOTOTAL"
    FROM
        (
        -- Subconsulta que calcula as informações agregadas e ordena pelo volume total em ordem decrescente.
            SELECT
            -- Seleciona a morada do armazém e dá um alias de coluna como "ARMAZEM".
                a.morada             AS "ARMAZEM",
            -- Calcula a soma do número de transportes e dá um alias de coluna como "Nº TRANSPORTES".
                SUM(p.n_transportes) AS "Nº TRANSPORTES",
            -- Calcula a soma do volume total e dá um alias de coluna como "VOLUMETOTAL".
                SUM(p.volume)        AS "VOLUMETOTAL",
            -- Calcula a soma do peso total e dá um alias de coluna como "PESOTOTAL".
                SUM(p.peso)          AS "PESOTOTAL"
            FROM
            -- Tabelas envolvidas na consulta.
                viagem         v,
                armazem        a,
                viagem_veiculo vv,
                veiculo        vcl,
                pedido_viagem  pv,
                pedido         p
            WHERE
                -- Relaciona o ID do armazém na tabela 'viagem' com o ID do armazém na tabela 'armazem'.
                    v.armazem_id_armazem1 = a.id_armazem
            -- Relaciona o ID da viagem na tabela 'viagem' com o ID da viagem na tabela 'viagem_veiculo'.
                AND v.id_viagem = vv.viagem_id_viagem
            -- Relaciona o ID do veículo na tabela 'viagem_veiculo' com o ID do veículo na tabela 'veiculo'.
                AND vv.veiculo_id_veiculo = vcl.id_veiculo
            -- Relaciona o ID da viagem na tabela 'viagem' com o ID da viagem na tabela 'pedido_viagem'.
                AND v.id_viagem = pv.viagem_id_viagem
            -- Relaciona o ID do pedido na tabela 'pedido_viagem' com o ID do pedido na tabela 'pedido'.
                AND pv.pedido_id_pedido = p.id_pedido
            -- Filtra os registos para incluir apenas viagens do ano atual.
                AND EXTRACT(YEAR FROM v.dhprevinicio) = EXTRACT(YEAR FROM sysdate)
            GROUP BY
            -- Agrupa os resultados pela morada do armazém.
                a.morada
            ORDER BY
            -- Ordena os resultados pelo volume total em ordem decrescente.
                SUM(p.volume) DESC
        )
    WHERE
    -- Filtra os resultados para incluir apenas os três primeiros registos.
        ROWNUM <= 3
;
--------------------------------------------------------
--  DDL for View VIEW_J
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_J" ("CIDADE", "TIPO_MERCADORIA", "TEMPO_MEDIO") AS 
  SELECT
    -- Seleciona a morada do armazém e dá um alias de coluna como "cidade".
        a.morada    AS cidade,
    -- Seleciona a descrição do tipo de mercadoria e dá um alias de coluna como "tipo_mercadoria".
        t.descricao AS tipo_mercadoria,
    -- Calcula o tempo médio de entrega em horas e arredonda para duas casas decimais.
        round(AVG((de2.datahora - de1.datahora) * 24),
              2)    AS tempo_medio
    FROM
    -- Tabelas envolvidas na consulta.
        pedido        p,
        data_estado   de1,
        data_estado   de2,
        tipomerc      t,
        armazem       a,
        viagem        v,
        pedido_viagem pedv
    WHERE
        -- Relaciona o ID do pedido na tabela 'pedido' com o ID do pedido na tabela 'data_estado' (para o estado de aguardar entrega).
            p.id_pedido = de1.pedido_id_pedido
    -- Relaciona o ID do pedido na tabela 'pedido' com o ID do pedido na tabela 'data_estado' (para o estado de finalizado).
        AND p.id_pedido = de2.pedido_id_pedido
    -- Filtra os registos para incluir apenas os estados de aguardar entrega.
        AND de1.estado_id_estado = 'E4'
    -- Filtra os registos para incluir apenas os estados finalizados.
        AND de2.estado_id_estado = 'E5'
    -- Relaciona o ID do tipo de mercadoria na tabela 'pedido' com o ID do tipo de mercadoria na tabela 'tipomerc'.
        AND p.tipomerc_id_tm = t.id_tm
    -- Relaciona o ID do armazém na tabela 'pedido' com o ID do armazém na tabela 'armazem'.
        AND v.armazem_id_armazem = a.id_armazem
    -- Filtra os registos para incluir apenas armazéns em Lisboa.
        AND a.morada LIKE '%Lisboa%'
    -- Filtra os registos para incluir apenas datas de entrega dos últimos 7 dias.
        AND de2.datahora >= trunc(sysdate) - 7
        AND de2.datahora < trunc(sysdate)
    -- Junta as informações da tabela 'pedido_viagem' com 'viagem'.
        AND p.id_pedido = pedv.pedido_id_pedido
        AND pedv.viagem_id_viagem = v.id_viagem
-- Agrupa os resultados pela morada do armazém e pela descrição do tipo de mercadoria.
    GROUP BY
        a.morada,
        t.descricao
-- Ordena os resultados pelo tempo médio em ordem crescente.
    ORDER BY
        tempo_medio
;
--------------------------------------------------------
--  DDL for View VIEW_K
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_K" ("CIDADE", "TIPO_MERCADORIA", "TEMPO_MEDIO_SEMANA_ATUAL", "TEMPO_MEDIO_SEMANA_ANTERIOR", "VARIACAO_PERCENTUAL") AS 
  WITH tempo_medio_semana_atual AS (
    -- Calcula o tempo médio de entrega para a semana atual.
        SELECT
            a.morada    AS cidade,                    -- Seleciona a morada do armazém como 'cidade' da tabela ARMAZEM e dá-lhe o alias 'cidade'.
            t.descricao AS tipo_mercadoria,          -- Seleciona a descrição do tipo de mercadoria da tabela TIPOMERC e dá-lhe o alias 'tipo_mercadoria'.
            round(AVG((de2.datahora - de1.datahora) * 24),
                  2)    AS tempo_medio  -- Calcula a média do tempo de entrega em horas e arredonda para duas casas decimais.
        FROM
            pedido        p,                         -- Tabela de pedidos, com o alias P.
            data_estado   de1,                       -- Tabela de estados de dados, com o alias DE1.
            data_estado   de2,                       -- Tabela de estados de dados, com o alias DE2.
            tipomerc      t,                         -- Tabela de tipos de mercadoria, com o alias T.
            armazem       a,                         -- Tabela de armazéns, com o alias A.
            viagem        v,                         -- Tabela de viagens, com o alias V.
            pedido_viagem pedv                      -- Tabela de relação entre pedidos e viagens, com o alias PEDV.
        WHERE
                p.id_pedido = de1.pedido_id_pedido                      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (primeiro estado) pelo ID_PEDIDO.
            AND p.id_pedido = de2.pedido_id_pedido                      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (segundo estado) pelo ID_PEDIDO.
            AND de1.estado_id_estado = 'E4'                            -- Condição para o primeiro estado ser 'a aguardar entrega'.
            AND de2.estado_id_estado = 'E5'                            -- Condição para o segundo estado ser 'finalizado'.
            AND p.tipomerc_id_tm = t.id_tm                             -- Junta a tabela PEDIDO com a tabela TIPOMERC pelo ID_TM.
            AND p.id_pedido = pedv.pedido_id_pedido                    -- Junta a tabela PEDIDO com a tabela PEDIDO_VIAGEM pelo ID_PEDIDO.
            AND pedv.viagem_id_viagem = v.id_viagem                    -- Junta a tabela PEDIDO_VIAGEM com a tabela VIAGEM pelo VIAGEM_ID_VIAGEM.
            AND v.armazem_id_armazem = a.id_armazem                    -- Junta a tabela VIAGEM com a tabela ARMAZEM pelo ARMAZEM_ID_ARMAZEM.
            AND a.morada LIKE '%Lisboa%'                               -- Filtra os armazéns localizados em Lisboa.
            AND de2.datahora >= trunc(sysdate) - 7                      -- Filtra os registos da última semana.
            AND de2.datahora < trunc(sysdate)                           -- Garante que os registos pertencem à semana atual.
        GROUP BY
            a.morada,                                                  -- Agrupa os resultados pela morada do armazém.
            t.descricao                                                -- Agrupa os resultados pela descrição do tipo de mercadoria.
    ), tempo_medio_semana_anterior AS (
    -- Calcula o tempo médio de entrega para a semana anterior.
        SELECT
            a.morada    AS cidade,                    -- Seleciona a morada do armazém como 'cidade' da tabela ARMAZEM e dá-lhe o alias 'cidade'.
            t.descricao AS tipo_mercadoria,          -- Seleciona a descrição do tipo de mercadoria da tabela TIPOMERC e dá-lhe o alias 'tipo_mercadoria'.
            round(AVG((de2.datahora - de1.datahora) * 24),
                  2)    AS tempo_medio  -- Calcula a média do tempo de entrega em horas e arredonda para duas casas decimais.
        FROM
            pedido        p,                         -- Tabela de pedidos, com o alias P.
            data_estado   de1,                       -- Tabela de estados de dados, com o alias DE1.
            data_estado   de2,                       -- Tabela de estados de dados, com o alias DE2.
            tipomerc      t,                         -- Tabela de tipos de mercadoria, com o alias T.
            armazem       a,                         -- Tabela de armazéns, com o alias A.
            viagem        v,                         -- Tabela de viagens, com o alias V.
            pedido_viagem pedv                      -- Tabela de relação entre pedidos e viagens, com o alias PEDV.
        WHERE
                p.id_pedido = de1.pedido_id_pedido                      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (primeiro estado) pelo ID_PEDIDO.
            AND p.id_pedido = de2.pedido_id_pedido                      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (segundo estado) pelo ID_PEDIDO.
            AND de1.estado_id_estado = 'E4'                            -- Condição para o primeiro estado ser 'a aguardar entrega'.
            AND de2.estado_id_estado = 'E5'                            -- Condição para o segundo estado ser 'finalizado'.
            AND p.tipomerc_id_tm = t.id_tm                             -- Junta a tabela PEDIDO com a tabela TIPOMERC pelo ID_TM.
            AND p.id_pedido = pedv.pedido_id_pedido                    -- Junta a tabela PEDIDO com a tabela PEDIDO_VIAGEM pelo ID_PEDIDO.
            AND pedv.viagem_id_viagem = v.id_viagem                    -- Junta a tabela PEDIDO_VIAGEM com a tabela VIAGEM pelo VIAGEM_ID_VIAGEM.
            AND v.armazem_id_armazem = a.id_armazem                    -- Junta a tabela VIAGEM com a tabela ARMAZEM pelo ARMAZEM_ID_ARMAZEM.
            AND a.morada LIKE '%Lisboa%'                               -- Filtra os armazéns localizados em Lisboa.
            AND de2.datahora >= trunc(sysdate) - 14                     -- Filtra os registos da semana anterior.
            AND de2.datahora < trunc(sysdate) - 7                      -- Garante que os registos pertencem à semana anterior.
        GROUP BY
            a.morada,                                                  -- Agrupa os resultados pela morada do armazém.
            t.descricao                                                -- Agrupa os resultados pela descrição do tipo de mercadoria.
    )
-- Combina os resultados das consultas para a semana atual e anterior, calculando a variação percentual no tempo médio de entrega.
    SELECT
        sa.cidade                                                            AS cidade,                             -- Seleciona a cidade (morada do armazém) da semana atual.
        sa.tipo_mercadoria                                                   AS tipo_mercadoria,                  -- Seleciona o tipo de mercadoria da semana atual.
        sa.tempo_medio                                                       AS tempo_medio_semana_atual,          -- Seleciona o tempo médio de entrega da semana atual.
        sm.tempo_medio                                                       AS tempo_medio_semana_anterior,       -- Seleciona o tempo médio de entrega da semana anterior.
        round(((sa.tempo_medio - sm.tempo_medio) / sm.tempo_medio) * 100, 2) AS variacao_percentual                 -- Calcula a variação percentual entre as médias de tempo de entrega.
    FROM
             tempo_medio_semana_atual sa                                       -- Seleciona os resultados da semana atual.
        JOIN tempo_medio_semana_anterior sm ON sa.cidade = sm.cidade           -- Une os resultados da semana atual com os da semana anterior pela cidade.
                                               AND sa.tipo_mercadoria = sm.tipo_mercadoria
;
--------------------------------------------------------
--  DDL for View VIEW_L
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_L" ("Tipo_Mercadoria", "DIF_TEMPOS") AS 
  WITH tempo_entrega AS (
    -- Subconsulta que calcula o tempo médio de entrega para cada tipo de mercadoria e grupo de pedidos.
        SELECT
        -- Utiliza uma expressão CASE para categorizar os pedidos em dois grupos (Grupo 1 e Grupo 2) com base no número de transportes.
            CASE
                WHEN p."N_TRANSPORTES" = 1 THEN
                    'Grupo 1'
                ELSE
                    'Grupo 2'
            END                                                                                               AS "Grupo_Pedido",
            p.tipomerc_id_tm                                                                                  AS "Tipo_Mercadoria", -- Adiciona a coluna "Tipo_Mercadoria".
        -- Calcula o tempo médio de entrega em segundos e o converte para a unidade desejada (segundos).
            AVG(EXTRACT(SECOND FROM(CAST(de."DATAHORA" AS TIMESTAMP) - CAST(de_e1."DATAHORA" AS TIMESTAMP)))) AS "tempo_medio_entrega"
        FROM
                 pedido p                                      -- Tabela de pedidos, com o alias P.
            JOIN data_estado de ON p."ID_PEDIDO" = de."PEDIDO_ID_PEDIDO"           -- Junta a tabela PEDIDO com a tabela DATA_ESTADO pelo ID_PEDIDO.
            JOIN estado      e5 ON de."ESTADO_ID_ESTADO" = e5."ID_ESTADO"            -- Junta a tabela DATA_ESTADO com a tabela ESTADO (estado final) pelo ESTADO_ID_ESTADO.
                              AND e5."DESCRICAO" = 'E5'                               -- Filtra os registos onde o estado é 'E5' (finalizado).
            JOIN data_estado de_e1 ON p."ID_PEDIDO" = de_e1."PEDIDO_ID_PEDIDO"      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (estado inicial) pelo ID_PEDIDO.
            JOIN estado      e1 ON de_e1."ESTADO_ID_ESTADO" = e1."ID_ESTADO"         -- Junta a tabela DATA_ESTADO com a tabela ESTADO (estado inicial) pelo ESTADO_ID_ESTADO.
                              AND e1."DESCRICAO" = 'E1'                               -- Filtra os registos onde o estado é 'E1' (inicial).
        GROUP BY
        -- Agrupa os resultados pelo tipo de mercadoria e pelo grupo de pedido.
                CASE
                    WHEN p."N_TRANSPORTES" = 1 THEN
                        'Grupo 1'
                    ELSE
                        'Grupo 2'
                END,
                p.tipomerc_id_tm  -- Agrupa os resultados pelo tipo de mercadoria.
    )
-- Consulta principal que calcula a diferença de tempo médio de entrega entre os grupos de pedidos para cada tipo de mercadoria.
    SELECT
        "Tipo_Mercadoria",                                                         -- Seleciona o tipo de mercadoria.
        round(MAX(
            CASE
                WHEN "Grupo_Pedido" = 'Grupo 1' THEN                               -- Se o grupo de pedido for 'Grupo 1', seleciona o tempo médio de entrega.
                    "tempo_medio_entrega"
                ELSE
                    0
            END
        ) - MAX(
            CASE
                WHEN "Grupo_Pedido" = 'Grupo 2' THEN                               -- Se o grupo de pedido for 'Grupo 2', seleciona o tempo médio de entrega.
                    "tempo_medio_entrega"
                ELSE
                    0
            END
        ),
              2) AS "DIF_TEMPOS"                                                     -- Calcula a diferença entre os tempos médios de entrega e arredonda para duas casas decimais.
    FROM
        tempo_entrega  -- Usa os resultados da subconsulta tempo_entrega.
    GROUP BY
        "Tipo_Mercadoria"
;
--------------------------------------------------------
--  DDL for View VIEW_M_2020151878
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_M_2020151878" ("ID_CLIENTE", "NOME_CLIENTE", "NUM_PEDIDOS") AS 
  SELECT
        c.id_cliente,  -- Seleciona o ID do cliente da tabela CLIENTE
        c.nome                     AS nome_cliente,  -- Seleciona o nome do cliente da tabela CLIENTE e atribui um alias

    -- Conta o número de pedidos para cada cliente, usando a tabela CLIENTE_PEDIDO e atribuindo um alias
        COUNT(cp.pedido_id_pedido) AS num_pedidos
    FROM
        cliente        c,  -- Define a tabela CLIENTE e atribui um alias 'c'
        cliente_pedido cp  -- Define a tabela CLIENTE_PEDIDO e atribui um alias 'CP'

-- Estabelece a condição de junção entre as tabelas CLIENTE e CLIENTE_PEDIDO
    WHERE
        c.id_cliente = cp.cliente_id_cliente

-- Agrupa os resultados pelo ID do cliente e pelo nome do cliente
    GROUP BY
        c.id_cliente,
        c.nome
;
--------------------------------------------------------
--  DDL for View VIEW_M_2022113359
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_M_2022113359" ("ID_TROCO", "NUM_VIAGENS", "NUM_PEDIDOS") AS 
  SELECT
    troco.id_troco, -- Seleciona o ID do troco da tabela 'troco'.
    COUNT(DISTINCT viagem.id_viagem) AS num_viagens, -- Conta o número de viagens distintas e renomeia como 'num_viagens'.
    COUNT(pedido.id_pedido) AS num_pedidos -- Conta o número de pedidos da tabela 'pedido' e renomeia como 'num_pedidos'.
FROM
    troco
    LEFT JOIN viagem ON troco.id_troco = viagem.troco_id_troco -- Faz um LEFT JOIN com a tabela 'viagem' relacionando os trocos com as viagens através dos IDs de troco.
    LEFT JOIN pedido_viagem ON viagem.id_viagem = pedido_viagem.viagem_id_viagem -- Faz um LEFT JOIN com a tabela 'pedido_viagem' relacionando as viagens com os pedidos através dos IDs de viagem.
    LEFT JOIN pedido ON pedido_viagem.pedido_id_pedido = pedido.id_pedido -- Faz um LEFT JOIN com a tabela 'pedido' relacionando os pedidos com as suas respectivas entradas na tabela 'pedido_viagem'.
GROUP BY
    troco.id_troco -- Agrupa os resultados pela coluna 'id_troco' da tabela 'troco'.
ORDER BY
    COUNT(pedido.id_pedido) DESC
;
--------------------------------------------------------
--  DDL for View VIEW_M_2022147149
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_M_2022147149" ("ID_TROCO", "NUMERO_DE_MOTORISTAS") AS 
  SELECT 
    T.ID_TROCO, -- Seleciona o ID do troco da tabela TROCO
    COUNT(DISTINCT VM.MOTORISTA_ID_MOTORISTA) AS "NUMERO_DE_MOTORISTAS" -- Conta o número de motoristas distintos para cada troco
FROM 
    VIAGEM_MOTORISTA VM, 
    VIAGEM V, 
    TROCO T 
WHERE 
    --JOINS
    VM.VIAGEM_ID_VIAGEM = V.ID_VIAGEM 
    AND V.TROCO_ID_TROCO = T.ID_TROCO
GROUP BY 
    T.ID_TROCO
;
--------------------------------------------------------
--  DDL for View VIEW_N_2020151878
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_N_2020151878" ("TIPO_MERCADORIA", "TOTAL_CUSTO_TIPO_MERCADORIA") AS 
  SELECT
    TM.DESCRICAO AS TIPO_MERCADORIA, -- Seleciona o nome do tipo de mercadoria da tabela TIPOMERC e atribui o alias TIPO_MERCADORIA.
    (
        SELECT SUM(P.CUSTO) -- Subconsulta que calcula a soma do custo de todos os pedidos para o tipo de mercadoria atual.
        FROM PEDIDO P -- Tabela de pedidos.
        WHERE P.TIPOMERC_ID_TM = TM.ID_TM -- Condição para garantir que apenas os pedidos do tipo de mercadoria atual sejam considerados.
    ) AS TOTAL_CUSTO_TIPO_MERCADORIA -- Alias para o resultado da subconsulta, que representa o total de custo para o tipo de mercadoria atual.
FROM 
    TIPOMERC TM
;
--------------------------------------------------------
--  DDL for View VIEW_N_2022113359
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_N_2022113359" ("ID_ROTA", "NUMERO_VIAGENS") AS 
  SELECT
    R.ID_ROTA,

    -- Seleciona o número de viagens associadas a cada rota usando uma subconsulta
    (SELECT COUNT(*)
     FROM VIAGEM_ROTA VR
     WHERE VR.ROTA_ID_ROTA = R.ID_ROTA
    ) AS NUMERO_VIAGENS

-- Seleciona as rotas da tabela ROTA
FROM ROTA R
;
--------------------------------------------------------
--  DDL for View VIEW_N_2022147149
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_N_2022147149" ("ID_ROTA", "MEDIA_CARGA") AS 
  SELECT 
    R.ID_ROTA,
    (
        -- Subconsulta para calcular a média da carga dos veículos
        SELECT AVG(V.PESO_OCUPADO)
        FROM VIAGEM_VEICULO VV, VEICULO V, VIAGEM VIA, VIAGEM_VEICULO VR, VIAGEM_ROTA VRO
        WHERE 
                --JOINS
            VIA.ID_VIAGEM = VR.VIAGEM_ID_VIAGEM
            AND VR.VIAGEM_ID_VIAGEM = VRO.VIAGEM_ID_VIAGEM
            AND VRO.ROTA_ID_ROTA = R.ID_ROTA
            AND VV.VEICULO_ID_VEICULO = V.ID_VEICULO
    ) AS MEDIA_CARGA -- Alias para o resultado da média de carga
FROM ROTA R
;
--------------------------------------------------------
--  DDL for View VIEW_N2_2022113359
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_N2_2022113359" ("ID_ARMAZEM", "PEDIDOS_A_CHEGAR", "PEDIDOS_A_SAIR") AS 
  SELECT 
    A.ID_ARMAZEM, -- Seleciona o ID do armazém
    -- Subconsulta para obter os detalhes dos pedidos a chegar na próxima hora
    (
        SELECT 
            P.ID_PEDIDO -- Seleciona o ID do pedido
        FROM 
            VIAGEM_ARMAZEM_RECOLHA VAR -- Tabela de viagem para armazém de recolha
            JOIN VIAGEM V ON VAR.ID_VIAGEM = V.ID_VIAGEM -- Junta a tabela de viagem
            JOIN PEDIDO_VIAGEM PV ON V.ID_VIAGEM = PV.VIAGEM_ID_VIAGEM -- Junta a tabela de pedido de viagem
            JOIN PEDIDO P ON P.ID_PEDIDO = PV.PEDIDO_ID_PEDIDO -- Junta a tabela de pedido
        WHERE 
            VAR.ID_ARMAZEM_RECOLHA = A.ID_ARMAZEM -- Filtro pelo ID do armazém
            AND V.DHPREVINICIO BETWEEN SYSDATE AND SYSDATE + INTERVAL '1' HOUR -- Filtro pela próxima hora
    ) AS Pedidos_a_Chegar, -- Nomeia a subconsulta como Pedidos_a_Chegar
    -- Subconsulta para obter os detalhes dos pedidos a sair na próxima hora
    (
        SELECT 
            P.ID_PEDIDO -- Seleciona o ID do pedido
        FROM 
            VIAGEM_ARMAZEM_ENTREGA VAE -- Tabela de viagem para armazém de entrega
            JOIN VIAGEM V ON VAE.ID_VIAGEM = V.ID_VIAGEM -- Junta a tabela de viagem
            JOIN PEDIDO_VIAGEM PV ON V.ID_VIAGEM = PV.VIAGEM_ID_VIAGEM -- Junta a tabela de pedido de viagem
            JOIN PEDIDO P ON P.ID_PEDIDO = PV.PEDIDO_ID_PEDIDO -- Junta a tabela de pedido
        WHERE 
            VAE.ID_ARMAZEM_ENTREGA = A.ID_ARMAZEM -- Filtro pelo ID do armazém
            AND V.DHPREVINICIO BETWEEN SYSDATE AND SYSDATE + INTERVAL '1' HOUR -- Filtro pela próxima hora
    ) AS Pedidos_a_Sair -- Nomeia a subconsulta como Pedidos_a_Sair
FROM 
    ARMAZEM A -- Seleciona da tabela de armazém
WHERE 
    UPPER(A.MORADA) LIKE '%LISBOA'
;
REM INSERTING into AABDG23.ARMAZEM
SET DEFINE OFF;
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM13','R.Lourenco Peixinho,Aveiro','3800-164','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM02','R.Luis de Camoes,Beja','7800-852','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM03','AV.Central,Braga','4710-229','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM04','Forte S.Joao de Deus,Braganca','5300-263','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM05','R.Direita,Castelo Branco','2735-563','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM06','AV.Fernao de Magalhaes,Coimbra','3000-000','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM07','Praca dos Giraldes,Evora','7000-019','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM08','R.Principal,Faro','8000-075','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM09','R.D.SanchoI,Guarda','6300-025','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM10','Rossio,Lisboa','1100-201','100','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM11','R.Santa Catarina,Porto','4000-012','115','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM12','R.Do Buraco,Leiria','2400-016','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM01','R.Teixeira Guedes,Santarem','2000-029','100','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM14','R.Alexandre Herculano,Viseu','3510-034','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM15','R.Gomes Castilho,Vila Real','5000-446','10000','10000');
REM INSERTING into AABDG23.CLIENTE
SET DEFINE OFF;
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI1','123456780','Manuel Fernandes','Rua da Liberdade 1,Porto','912345678','manuel.fernandes@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI2','987654322','Ana Santos','Avenida Central 20,Viseu','923456789','ana.santos@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI3','456789124','João Oliveira','Praça da República 15,Beja','934567890','joao.oliveira@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI4','111222334','Sofia Silva','Travessa dos Cedros 5,Lisboa','945678901','sofia.silva@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI5','444555667','Rui Pereira','Rua dos Lírios 6,Guarda','956789012','rui.pereira@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI6','777888990','Catarina Gonçalves','Avenida dos Pinheiros 12,Castelo Branco','967890123','catarina.goncalves@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI7','000111223','Miguel Almeida','Rua das Rosas 25,Evora','978901234','miguel.almeida@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI8','333444556','Inês Rodrigues','Praça dos Girassóis 8,Santarem','989012345','ines.rodrigues@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI9','666777889','Carla Costa','Travessa das Oliveiras 10,Coimbra','900123456','carla.costa@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI10','999000112','Paulo Martins','Avenida dos Coqueiros 50,Braga','911234567','paulo.martins@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI11','222333445','Diana Sousa','Rua dos Cravos 18,Aveiro','922345678','diana.sousa@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI12','555666778','Ricardo Ferreira','Praça das Azáleas 7,Lisboa','933456789','ricardo.ferreira@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI13','888999001','Isabel Ramos','Avenida das Amendoeiras 22,Bragança','944567890','isabel.ramos@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI14','111222335','Gustavo Moreira','Travessa das Violetas 11,Leiria','955678901','gustavo.moreira@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI15','444555668','Lúcia Silva','Rua das Hortênsias 40,Vila Real','966789012','lucia.silva@example.com');
REM INSERTING into AABDG23.CLIENTE_PEDIDO
SET DEFINE OFF;
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI6','2024000327');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI12','2023041105');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI4','2023031004');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI11','2021031101');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI11','2021031104');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI10','2024000001');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI8','2024000111');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI15','2024000211');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI2','2024000241');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI6','2024000321');
Insert into AABDG23.CLIENTE_PEDIDO (CLIENTE_ID_CLIENTE,PEDIDO_ID_PEDIDO) values ('CLI7','2024000322');
REM INSERTING into AABDG23.DATA_ESTADO
SET DEFINE OFF;
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.06','RR.MM.DD'),'E1','2023041105','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.06','RR.MM.DD'),'E2','2023041105','ON');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.07','RR.MM.DD'),'E3','2023041105','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.07','RR.MM.DD'),'E2','2023041105','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.08','RR.MM.DD'),'E4','2023041105','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.08','RR.MM.DD'),'E5','2023041105','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('21.02.10','RR.MM.DD'),'E1','2021031101','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('21.02.10','RR.MM.DD'),'E2','2021031101','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('21.02.11','RR.MM.DD'),'E3','2021031101','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('21.02.11','RR.MM.DD'),'E2','2021031101','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('21.02.11','RR.MM.DD'),'E4','2021031101','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('21.02.11','RR.MM.DD'),'E5','2021031101','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.05','RR.MM.DD'),'E1','2023041106','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.06','RR.MM.DD'),'E2','2023041106','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.07','RR.MM.DD'),'E3','2023041106','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.07','RR.MM.DD'),'E2','2023041106','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.08','RR.MM.DD'),'E4','2023041106','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.02.08','RR.MM.DD'),'E5','2023041106','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.05.28','RR.MM.DD'),'E1','2024000327','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.05.28','RR.MM.DD'),'E5','123','ON');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('24.05.28','RR.MM.DD'),'E5','123','ON');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.05','RR.MM.DD'),'E1','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.05','RR.MM.DD'),'E2','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.07','RR.MM.DD'),'E3','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.07','RR.MM.DD'),'E2','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.11','RR.MM.DD'),'E3','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.11','RR.MM.DD'),'E2','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.13','RR.MM.DD'),'E3','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.13','RR.MM.DD'),'E2','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.17','RR.MM.DD'),'E3','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.17','RR.MM.DD'),'E2','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.18','RR.MM.DD'),'E4','2023031004','OFF');
Insert into AABDG23.DATA_ESTADO (DATAHORA,ESTADO_ID_ESTADO,PEDIDO_ID_PEDIDO,PROCESSO) values (to_date('23.04.18','RR.MM.DD'),'E5','2023031004','OFF');
REM INSERTING into AABDG23.ESTADO
SET DEFINE OFF;
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E1','A aguardar recolha');
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E2','Em armazém');
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E3','Em trânsito');
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E4','A aguardar entrega');
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E5','Entregue');
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E6','Devolvido');
REM INSERTING into AABDG23.MOTORISTA
SET DEFINE OFF;
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE,PREMIO,PAGAMENTO,N_VIAGENS) values ('M01','Pedro Alves','232120854','80360550	','46738410','404037482','1250','R.da Paz,Coimbra,3025-101','932564879','0','1250','0');
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE,PREMIO,PAGAMENTO,N_VIAGENS) values ('M02','Paulo Mariano','249681161','48289878','86417001','411544126','2000','AV.Jose Bonifacio Andrada,Coimbra,3030-403','912548369','0','2000','0');
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE,PREMIO,PAGAMENTO,N_VIAGENS) values ('M03','Joao Costa','254644457','48763865','26299500','948309359','1400','Rua Luís A. Duarte Santos,Coimbra,3030-403','915876324','0','1400','0');
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE,PREMIO,PAGAMENTO,N_VIAGENS) values ('M04','Francisco Pereira','158890876','55963392	','28085291','949529800','1260','R.Dos Pescadores,Figueira da Foz,3080-260','965892710','0','1260','0');
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE,PREMIO,PAGAMENTO,N_VIAGENS) values ('M05','Francisco Duarte','128981563','21672366','12578816','426888338','1300','Rua Gualdim Paes,Pombal,3100-312','915698480','0','1300','0');
REM INSERTING into AABDG23.PEDIDO
SET DEFINE OFF;
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2023041106',to_date('24.02.05','RR.MM.DD'),'CLI12','R.Santa Catarina,Porto-Normal','5','1','1200','TM01','2','48',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024000327',to_date('24.05.28','RR.MM.DD'),'CLI6','KFC,Guarda Shopping,Guarda-Normal','520','10000','388','TM07','2','48',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('123',to_date('24.05.28','RR.MM.DD'),'Remetente Exemplo','Destinatario Exemplo','10','5','50','TM01','2','24','1');
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024052811',to_date('24.05.29','RR.MM.DD'),'CLI1','Algum Lugar, Lisboa','10','78','500','TM01','1','24',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024052807',to_date('24.05.28','RR.MM.DD'),'CLI1','Algum Lugar, Lisboa','10','65','500','TM01','1','24',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024052801',to_date('24.05.28','RR.MM.DD'),'CLI1','Algum Lugar, Lisboa','10','65','500','TM01','1','24',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024052802',to_date('24.05.28','RR.MM.DD'),'CLI1','Algum Lugar, Lisboa','10','65','500','TM01','1','24',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2023041105',to_date('24.02.05','RR.MM.DD'),'CLI12','Auchan,Arrabida Shopping,Porto - Normal','720','11','1200','TM09','2','48','1');
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2021031101',to_date('21.02.10','RR.MM.DD'),'CLI11','Continente,Coimbra Shopping- Urgente','200','153','670','TM10','1','12','1');
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2021031104',to_date('21.06.17','RR.MM.DD'),'CLI11','Radio Popular,Forum Coimbra-Economico','100','1','134','TM02','3','112',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2023031004',to_date('23.04.21','RR.MM.DD'),'CLI4','Chinaworld,R.D.Dinis,Lisboa -SuperEconomico','150','20','232','TM01','4','336','4');
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024000001',to_date('24.01.02','RR.MM.DD'),'CLI10','Fireplace,R.Principal,Porto-Economico','5','1','2320','TM03','3','112',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024000111',to_date('24.03.14','RR.MM.DD'),'CLI8','Infwork,R.Direita,Castelo Branco-Normal','26000','76','624','TM04','2','48',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024000211',to_date('24.03.15','RR.MM.DD'),'CLI15','Labwork,R.Esquerda,Braganca-Urgente','52000','152','1200','TM05','1','12',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024000241',to_date('24.03.23','RR.MM.DD'),'CLI2','Gasword,R.Central,Faro-Urgente ','13000','38','1470','TM06','1','12',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024000321',to_date('24.03.29','RR.MM.DD'),'CLI6','KFC,Guarda Shopping,Guarda-Normal','520','70','388','TM07','2','48',null);
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2024000322',to_date('24.04.02','RR.MM.DD'),'CLI7','Pingo Doce,Amoreiras Shopping-Normal','100','10','528','TM08','2','48',null);
REM INSERTING into AABDG23.PEDIDO_VIAGEM
SET DEFINE OFF;
Insert into AABDG23.PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO,VIAGEM_ID_VIAGEM) values ('123','1');
Insert into AABDG23.PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO,VIAGEM_ID_VIAGEM) values ('2023041105','1');
Insert into AABDG23.PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO,VIAGEM_ID_VIAGEM) values ('2023041106','1');
Insert into AABDG23.PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO,VIAGEM_ID_VIAGEM) values ('2024000111','1');
Insert into AABDG23.PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO,VIAGEM_ID_VIAGEM) values ('2024052801','1');
Insert into AABDG23.PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO,VIAGEM_ID_VIAGEM) values ('2024052802','1');
Insert into AABDG23.PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO,VIAGEM_ID_VIAGEM) values ('2024052811','1');
REM INSERTING into AABDG23.ROTA
SET DEFINE OFF;
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R01','Segunda,08:00');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R02','Segunda,14:30');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R03','Terca,08:00');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R04','Terca,14:30');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R05','Quarta,08:00');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R08','Quinta,14:30');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R10','Sexta,14:30');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R09','Sexta,08:00');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R06','Quarta,14:30');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R07','Quinta,08:00');
Insert into AABDG23.ROTA (ID_ROTA,DIA_HORA) values ('R11','Sabado,09:30');
REM INSERTING into AABDG23.ROTA_TROCO
SET DEFINE OFF;
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R01','TR01');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R02','TR14');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R03','TR11');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R04','TR04');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R05','TR05');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R06','TR06');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R07','TR15');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R08','TR03');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R09','TR02');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R10','TR13');
Insert into AABDG23.ROTA_TROCO (ROTA_ID_ROTA,TROCO_ID_TROCO) values ('R11','TR08');
REM INSERTING into AABDG23.SERVICO
SET DEFINE OFF;
Insert into AABDG23.SERVICO (ID_SERVICO,PRECO_KM,DURA_MAX) values ('Urgente','10','24');
Insert into AABDG23.SERVICO (ID_SERVICO,PRECO_KM,DURA_MAX) values ('Normal','4','72');
Insert into AABDG23.SERVICO (ID_SERVICO,PRECO_KM,DURA_MAX) values ('Economico','2','168');
Insert into AABDG23.SERVICO (ID_SERVICO,PRECO_KM,DURA_MAX) values ('SuperEconomico','1','504');
REM INSERTING into AABDG23.SERVICO_PEDIDO
SET DEFINE OFF;
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Normal','2023041105');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Urgente','2021031101');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Economico','2021031104');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('SuperEconomico','2023031004');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Economico','2024000001');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Normal','2024000111');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Urgente','2024000211');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Urgente','2024000241');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Normal','2024000321');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Normal','2024000322');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Normal','2024000327');
Insert into AABDG23.SERVICO_PEDIDO (SERVICO_ID_SERVICO,PEDIDO_ID_PEDIDO) values ('Normal','2023041106');
REM INSERTING into AABDG23.TIPOMERC
SET DEFINE OFF;
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM01','Regular');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM02','Fragil');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM03','Explosiva');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM04','Inflamavel');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM05','Ácidos');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM06','Comburente');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM07','Animais Vivos');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM08','Materiais Refrigerados');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM09','Grande Eletrodoméstico');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM10','Pereciveis');
REM INSERTING into AABDG23.TIPOMERC_TIPOMERC
SET DEFINE OFF;
Insert into AABDG23.TIPOMERC_TIPOMERC (TIPOMERC_ID_TM,TIPOMERC_ID_TM1) values ('TM01','TM02');
Insert into AABDG23.TIPOMERC_TIPOMERC (TIPOMERC_ID_TM,TIPOMERC_ID_TM1) values ('TM01','TM09');
Insert into AABDG23.TIPOMERC_TIPOMERC (TIPOMERC_ID_TM,TIPOMERC_ID_TM1) values ('TM01','TM10');
Insert into AABDG23.TIPOMERC_TIPOMERC (TIPOMERC_ID_TM,TIPOMERC_ID_TM1) values ('TM08','TM01');
Insert into AABDG23.TIPOMERC_TIPOMERC (TIPOMERC_ID_TM,TIPOMERC_ID_TM1) values ('TM08','TM02');
Insert into AABDG23.TIPOMERC_TIPOMERC (TIPOMERC_ID_TM,TIPOMERC_ID_TM1) values ('TM08','TM10');
REM INSERTING into AABDG23.TROCO
SET DEFINE OFF;
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR01','PORTO','LISBOA','300','3','5','ARM11','ARM10');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR02','VISEU','GUARDA','76','1','2','ARM14','ARM09');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR03','COIMBRA','VISEU','95','2','3','ARM06','ARM14');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR05','COIMBRA','AVEIRO','67','1','2','ARM06','ARM13');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR07','PORTO','VILA REAL','95','2','3','ARM11','ARM15');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR06','AVEIRO','PORTO','77','1','2','ARM13','ARM11');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR08','BEJA','FARO','147','2','3','ARM02','ARM08');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR09','BEJA','EVORA','80','1','2','ARM02','ARM07');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR10','EVORA','LISBOA','132','2','3','ARM07','ARM10');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR11','LISBOA','SANTAREM','81','1','2','ARM10','ARM01');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR12','SANTAREM','CASTELO BRANCO','156','2','3','ARM01','ARM05');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR13','CASTELO BRANCO','GUARDA','97','1','2','ARM05','ARM03');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR14','LISBOA','LEIRIA','145','2','3','ARM10','ARM12');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR04','LEIRIA','COIMBRA','76','1','2','ARM12','ARM06');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR15','PORTO','BRAGA','55','1','2','ARM11','ARM03');
Insert into AABDG23.TROCO (ID_TROCO,ORIGEM,DESTINO,DISTANCIA,DURAMEDIA,DURAMAX,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1) values ('TR16','VILA REAL','BRAGANCA','120','2','3','ARM15','ARM04');
REM INSERTING into AABDG23.VEICULO
SET DEFINE OFF;
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V01','DD6677','2017','SCANIA','0','CAMIAO','SERIE L
','26000','76','234','10000',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V02','GG3489','2015','SCANIA','1','CAMIAO','SERIE L','26000','76','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V03','FF5981','2020','SCANIA','1','CAMIAO','SERIE L','52000','152','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V04','RF9085','2020','SCANIA','0','CAMIAO','SERIE L','26000','76','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V05','FR1236','2018','SCANIA','1','CAMIAO','SERIE L','26000','76','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V06','PT1290','2021','SCANIA','0','CAMIAO','SERIE L','26000','76','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V07','PG1303','2015','MERCEDES','0','FURGAO','VITO','3000','7','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V08','PG0450','2016','MERCEDES','0','FURGAO','VITO','3000','7','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V09','TP0305','2016','MERCEDES','0','FURGAO','VITO','3000','7','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V10','TP5679','2018','MERCEDES','1','FURGAO','VITO','3000','7','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V12','AA1141','2023','VOLVO','0','CAMIAO','FH','26000','1000','0','0',null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO,DATA_ULTIMA_REVISAO) values ('V11','AA1111','2023','VOLVO','0','CAMIAO','FH','26000','100','0','0',null);
REM INSERTING into AABDG23.VEICULO_ARMAZEM
SET DEFINE OFF;
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V01','ARM01');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V02','ARM02');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V03','ARM03');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V04','ARM04');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V05','ARM05');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V06','ARM06');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V07','ARM07');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V08','ARM08');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V09','ARM09');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V10','ARM10');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V12','ARM10');
Insert into AABDG23.VEICULO_ARMAZEM (VEICULO_ID_VEICULO,ARMAZEM_ID_ARMAZEM) values ('V11','ARM10');
REM INSERTING into AABDG23.VEICULO_TIPOMERC
SET DEFINE OFF;
Insert into AABDG23.VEICULO_TIPOMERC (VEICULO_ID_VEICULO,TIPOMERC_ID_TM) values ('V02','TM07');
REM INSERTING into AABDG23.VIAGEM
SET DEFINE OFF;
Insert into AABDG23.VIAGEM (ID_VIAGEM,DISTANCIA,DHPARTIDA,NPEDIDOS,VOLOCUPADO,DHPREVINICIO,DHPREVFIM,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1,TROCO_ID_TROCO) values ('2','219',to_date('24.05.30','RR.MM.DD'),'2','441',to_date('24.02.07','RR.MM.DD'),to_date('24.03.31','RR.MM.DD'),'ARM01','ARM11','TR01');
Insert into AABDG23.VIAGEM (ID_VIAGEM,DISTANCIA,DHPARTIDA,NPEDIDOS,VOLOCUPADO,DHPREVINICIO,DHPREVFIM,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1,TROCO_ID_TROCO) values ('1','81',to_date('24.06.01','RR.MM.DD'),'2','441',to_date('24.02.07','RR.MM.DD'),to_date('24.02.26','RR.MM.DD'),'ARM10','ARM01','TR11');
REM INSERTING into AABDG23.VIAGEM_ARMAZEM_ENTREGA
SET DEFINE OFF;
Insert into AABDG23.VIAGEM_ARMAZEM_ENTREGA (ID_VIAGEM,ID_ARMAZEM_ENTREGA) values ('1','ARM11');
REM INSERTING into AABDG23.VIAGEM_ARMAZEM_RECOLHA
SET DEFINE OFF;
Insert into AABDG23.VIAGEM_ARMAZEM_RECOLHA (ID_VIAGEM,ID_ARMAZEM_RECOLHA) values ('1','ARM10');
REM INSERTING into AABDG23.VIAGEM_MOTORISTA
SET DEFINE OFF;
Insert into AABDG23.VIAGEM_MOTORISTA (VIAGEM_ID_VIAGEM,MOTORISTA_ID_MOTORISTA) values ('2','M01');
Insert into AABDG23.VIAGEM_MOTORISTA (VIAGEM_ID_VIAGEM,MOTORISTA_ID_MOTORISTA) values ('1','M01');
REM INSERTING into AABDG23.VIAGEM_ROTA
SET DEFINE OFF;
Insert into AABDG23.VIAGEM_ROTA (VIAGEM_ID_VIAGEM,ROTA_ID_ROTA) values ('2','R01');
Insert into AABDG23.VIAGEM_ROTA (VIAGEM_ID_VIAGEM,ROTA_ID_ROTA) values ('1','R01');
REM INSERTING into AABDG23.VIAGEM_VEICULO
SET DEFINE OFF;
Insert into AABDG23.VIAGEM_VEICULO (VIAGEM_ID_VIAGEM,VEICULO_ID_VEICULO) values ('2','V01');
Insert into AABDG23.VIAGEM_VEICULO (VIAGEM_ID_VIAGEM,VEICULO_ID_VEICULO) values ('1','V01');
--------------------------------------------------------
--  DDL for Index PK_DATA_ESTADO
--------------------------------------------------------

  CREATE UNIQUE INDEX "AABDG23"."PK_DATA_ESTADO" ON "AABDG23"."DATA_ESTADO" ("DATAHORA", "ESTADO_ID_ESTADO", "PEDIDO_ID_PEDIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ID_VIAGEM_ARMAZEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AABDG23"."ID_VIAGEM_ARMAZEM_PK" ON "AABDG23"."VIAGEM_ARMAZEM_RECOLHA" ("ID_VIAGEM", "ID_ARMAZEM_RECOLHA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ID_VIAGEM_ARMAZEM_ENTREGA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AABDG23"."ID_VIAGEM_ARMAZEM_ENTREGA_PK" ON "AABDG23"."VIAGEM_ARMAZEM_ENTREGA" ("ID_VIAGEM", "ID_ARMAZEM_ENTREGA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger ALTERA_VEICULO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AABDG23"."ALTERA_VEICULO" 
AFTER INSERT ON pedido_viagem
FOR EACH ROW
DECLARE
    volume_atual        NUMBER;
    volume_disponivel   NUMBER;
    novo_veiculo_id     VARCHAR2(20 BYTE);
    cod_armazem         VARCHAR2(20 BYTE);
    taxa_ocupacao_atual FLOAT;
BEGIN
    -- Calcula o volume atual e o armazém associado à viagem
    SELECT v.volocupado, v.armazem_id_armazem1
    INTO volume_atual, cod_armazem
    FROM viagem v
    WHERE v.id_viagem = :NEW.viagem_id_viagem;

    -- Calcula o volume disponível do veículo associado à viagem
    SELECT vei.volmercmax - vei.vol_ocupado
    INTO volume_disponivel
    FROM veiculo vei
    JOIN viagem_veiculo vv ON vei.id_veiculo = vv.veiculo_id_veiculo
    WHERE vv.viagem_id_viagem = :NEW.viagem_id_viagem;

    -- Calcula a taxa de ocupação atual
    taxa_ocupacao_atual := (volume_atual / volume_disponivel) * 100;

    -- Verifica se a taxa de ocupação é superior a 95%
    IF taxa_ocupacao_atual > 95 THEN
        -- Utiliza a função para encontrar um veículo disponível com capacidade para reduzir a taxa para menos de 80%
        novo_veiculo_id := veiculo_disp_capac(cod_armazem, volume_atual); 

        -- Se encontrar um veículo adequado, atualiza a viagem
        IF novo_veiculo_id IS NOT NULL THEN
            UPDATE viagem_veiculo
            SET veiculo_id_veiculo = novo_veiculo_id
            WHERE viagem_id_viagem = :NEW.viagem_id_viagem;
        END IF;
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20809, 'não há veículos disponíveis no armazém');
END;

/
ALTER TRIGGER "AABDG23"."ALTERA_VEICULO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ATUALIZA_VOLUME_OCUPADO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AABDG23"."ATUALIZA_VOLUME_OCUPADO" 
--para testar output
AFTER INSERT ON pedido_viagem
FOR EACH ROW
DECLARE
    volume_pedido NUMBER;
    veiculo_id    VARCHAR2(20 BYTE);
BEGIN
    -- Obter o volume do pedido inserido
    SELECT VOLUME INTO volume_pedido
    FROM PEDIDO
    WHERE ID_PEDIDO = :NEW.PEDIDO_ID_PEDIDO;

    -- Obter o ID do veículo associado à viagem
    SELECT VEICULO_ID_VEICULO INTO veiculo_id
    FROM VIAGEM_VEICULO
    WHERE VIAGEM_ID_VIAGEM = :NEW.VIAGEM_ID_VIAGEM;

    -- Atualizar o volume ocupado na tabela VIAGEM
    UPDATE VIAGEM
    SET VOLOCUPADO = VOLOCUPADO + volume_pedido
    WHERE ID_VIAGEM = :NEW.VIAGEM_ID_VIAGEM;

    -- Atualizar o volume ocupado na tabela VEICULO
    UPDATE VEICULO
    SET VOL_OCUPADO = VOL_OCUPADO + volume_pedido
    WHERE ID_VEICULO = veiculo_id;
END;

/
ALTER TRIGGER "AABDG23"."ATUALIZA_VOLUME_OCUPADO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CARREGA_DE_ARMAZEM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AABDG23"."CARREGA_DE_ARMAZEM" 
AFTER UPDATE ON data_estado -- Trigger ativado após uma atualização na tabela DATA_ESTADO
FOR EACH ROW
DECLARE
    volume_pedido NUMBER;
    v_estado_anterior data_estado.estado_id_estado%TYPE;
    v_estado_seguinte data_estado.estado_id_estado%TYPE;
BEGIN
    -- Verifica se o novo estado do pedido é 'E3' (Em Trânsito) e o estado anterior era 'E2' (Em Armazém)
    v_estado_seguinte := :NEW.estado_id_estado;
    v_estado_anterior := :OLD.estado_id_estado;

    IF v_estado_seguinte = 'E3' AND v_estado_anterior = 'E2' THEN
        -- Obtém o volume do pedido
        SELECT VOLUME 
        INTO volume_pedido
        FROM PEDIDO
        WHERE ID_PEDIDO = :NEW.PEDIDO_ID_PEDIDO;

        -- Liberta o volume no armazém de origem
        UPDATE ARMAZEM
        SET CAPDISPONIVEL = CAPDISPONIVEL + volume_pedido
        WHERE ID_ARMAZEM = (
            SELECT ARMAZEM_ID_ARMAZEM -- Obtém o armazém de origem da viagem associada ao pedido
            FROM VIAGEM
            JOIN PEDIDO_VIAGEM ON VIAGEM.ID_VIAGEM = PEDIDO_VIAGEM.VIAGEM_ID_VIAGEM
            WHERE PEDIDO_VIAGEM.PEDIDO_ID_PEDIDO = :NEW.PEDIDO_ID_PEDIDO
        );
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- Tratar a exceção quando nenhum dado for encontrado (por exemplo, -20804, -20805, -20806)
        RAISE_APPLICATION_ERROR(-20804, 'ERRO: Código de viagem ou pedido ou armazém inexistente.');
    WHEN OTHERS THEN
        -- Tratar outras exceções (por exemplo, -20801, -20802, -20803, -20807, -20808, -20809, -20810, -20811, -20812)
        RAISE_APPLICATION_ERROR(-20001, 'Ocorreu um erro: ' || SQLERRM);
END;
/
ALTER TRIGGER "AABDG23"."CARREGA_DE_ARMAZEM" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DESCARREGA_DE_ARMAZEM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AABDG23"."DESCARREGA_DE_ARMAZEM" 
AFTER INSERT ON viagem -- Trigger ativado após uma inserção na tabela VIAGEM
FOR EACH ROW
DECLARE
    cursor pedidos_na_viagem IS
    SELECT pv.PEDIDO_ID_PEDIDO
    FROM PEDIDO_VIAGEM pv
    WHERE pv.VIAGEM_ID_VIAGEM = :NEW.ID_VIAGEM;

    volume_pedido NUMBER;
BEGIN
    FOR pedido IN pedidos_na_viagem LOOP
        -- Obtém o volume do pedido
        SELECT VOLUME 
        INTO volume_pedido
        FROM PEDIDO
        WHERE ID_PEDIDO = pedido.PEDIDO_ID_PEDIDO;

        -- Liberta o volume no armazém de origem
        UPDATE ARMAZEM
        SET CAPDISPONIVEL = CAPDISPONIVEL + volume_pedido
        WHERE ID_ARMAZEM = :NEW.ARMAZEM_ID_ARMAZEM; -- Usa o armazém de origem da nova viagem

        -- Atualiza o estado do pedido para "Em Trânsito" (E3)
        UPDATE DATA_ESTADO
        SET ESTADO_ID_ESTADO = 'E3'
        WHERE PEDIDO_ID_PEDIDO = pedido.PEDIDO_ID_PEDIDO
        AND ESTADO_ID_ESTADO = 'E2'; -- Garante que apenas pedidos "Em Armazém" são atualizados
    END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20804, 'Código de viagem inexistente ');
END;

/
ALTER TRIGGER "AABDG23"."DESCARREGA_DE_ARMAZEM" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DESCARREGA_NO_ARMAZEM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AABDG23"."DESCARREGA_NO_ARMAZEM" 
AFTER UPDATE ON data_estado -- Trigger ativado após uma atualização na tabela DATA_ESTADO
FOR EACH ROW
DECLARE
    volume_pedido NUMBER;
    v_estado_anterior data_estado.estado_id_estado%TYPE;
    v_estado_seguinte data_estado.estado_id_estado%TYPE;
BEGIN
    -- Verifica se o novo estado do pedido é 'E2' (Em Armazém)
    v_estado_seguinte := :NEW.estado_id_estado;
    v_estado_anterior := :OLD.estado_id_estado;

    IF v_estado_seguinte = 'E2' AND v_estado_anterior = 'E3' THEN
        -- Obtém o volume do pedido
        SELECT VOLUME 
        INTO volume_pedido
        FROM PEDIDO
        WHERE ID_PEDIDO = :NEW.PEDIDO_ID_PEDIDO;

        -- Aumenta o volume ocupado no armazém de destino
        UPDATE ARMAZEM
        SET CAPDISPONIVEL = CAPDISPONIVEL - volume_pedido
        WHERE ID_ARMAZEM = (
            SELECT ARMAZEM_ID_ARMAZEM1 -- Obtém o armazém de destino da viagem associada ao pedido
            FROM VIAGEM
            JOIN PEDIDO_VIAGEM ON VIAGEM.ID_VIAGEM = PEDIDO_VIAGEM.VIAGEM_ID_VIAGEM
            WHERE PEDIDO_VIAGEM.PEDIDO_ID_PEDIDO = :NEW.PEDIDO_ID_PEDIDO
        );
    END IF;
END;

/
ALTER TRIGGER "AABDG23"."DESCARREGA_NO_ARMAZEM" ENABLE;
--------------------------------------------------------
--  DDL for Trigger R_TRIG_2020151878
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AABDG23"."R_TRIG_2020151878" 
AFTER INSERT OR UPDATE ON VIAGEM_MOTORISTA
FOR EACH ROW
DECLARE
    v_estado_viagem VARCHAR2(50);
    v_estado_entregue VARCHAR2(50); 
BEGIN

   -- Obter o ID do estado "Entregue"
    SELECT ID_ESTADO
    INTO v_estado_entregue
    FROM ESTADO
    WHERE DESCRICAO = 'Entregue';

    -- Obter o estado da viagem 
    SELECT ESTADO_ID_ESTADO
    INTO v_estado_viagem
    FROM (
        SELECT ESTADO_ID_ESTADO
        FROM DATA_ESTADO
        WHERE PEDIDO_ID_PEDIDO = :NEW.VIAGEM_ID_VIAGEM
        ORDER BY DATAHORA DESC
    )
    WHERE ROWNUM = 1; -- Obter a primeira linha (último estado)

    -- Verificar se o estado da viagem é "Entregue"
    IF v_estado_viagem = v_estado_entregue THEN
        UPDATE MOTORISTA
        SET N_VIAGENS = N_VIAGENS + 1
        WHERE ID_MOTORISTA = :NEW.MOTORISTA_ID_MOTORISTA;
    END IF;
END;

/
ALTER TRIGGER "AABDG23"."R_TRIG_2020151878" ENABLE;
--------------------------------------------------------
--  DDL for Trigger R_TRIG_2022113359
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AABDG23"."R_TRIG_2022113359" 
-- Trigger ativado após uma inserção na tabela DATA_ESTADO--
AFTER INSERT ON DATA_ESTADO 
FOR EACH ROW
BEGIN
-- Atualiza o estado do novo registo para 'ON'
UPDATE DATA_ESTADO
SET PROCESSO = 'ON'
WHERE DATAHORA = :NEW.DATAHORA
AND ESTADO_ID_ESTADO = :NEW.ESTADO_ID_ESTADO
AND PEDIDO_ID_PEDIDO = :NEW.PEDIDO_ID_PEDIDO;

-- Atualiza os estados anteriores do mesmo pedido para 'OFF'
UPDATE DATA_ESTADO
SET PROCESSO = 'OFF'
WHERE PEDIDO_ID_PEDIDO = :NEW.PEDIDO_ID_PEDIDO
  AND DATAHORA < :NEW.DATAHORA;
EXCEPTION
WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20805, 'Código de pedido de transporte inexistente');
END;

/
ALTER TRIGGER "AABDG23"."R_TRIG_2022113359" ENABLE;
--------------------------------------------------------
--  DDL for Trigger R_TRIG_2022147149
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AABDG23"."R_TRIG_2022147149" 
--quando for inserido um valor na coluna premio o trigger soma o salario+premio e atualiza o campo pagamento para aquele funcionario-----
 AFTER
    UPDATE ON motorista -- Trigger ativado após uma atualização na tabela MOTORISTA
    FOR EACH ROW
DECLARE
    v_salario motorista.salario%TYPE;
    v_premio  motorista.premio%TYPE;
BEGIN
-- Verifica se o valor do premio foi alterado
    IF :new.premio != :old.premio THEN
-- Obtém o salário do motorista
        v_salario := :new.salario;

    -- Obtém o novo valor do premio
        v_premio := :new.premio;

    -- Calcula o novo pagamento e atualiza a coluna
        UPDATE motorista
        SET
            pagamento = v_salario + v_premio
        WHERE
            id_motorista = :new.id_motorista;

    END IF;
EXCEPTION
    WHEN no_data_found THEN

        raise_application_error(-20817, 'Motorista não encontrado.');

END;

/
ALTER TRIGGER "AABDG23"."R_TRIG_2022147149" ENABLE;
--------------------------------------------------------
--  DDL for Trigger UPSTATUS_ENTREGA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AABDG23"."UPSTATUS_ENTREGA" 
AFTER UPDATE ON DATA_ESTADO -- Trigger ativado após uma atualização na tabela DATA_ESTADO
FOR EACH ROW
DECLARE
    volume_pedido NUMBER;
BEGIN
    -- Verifica se o novo estado do pedido é 'E5' (Entregue)
    IF :NEW.ESTADO_ID_ESTADO = 'E5' THEN
        -- Obtém o volume do pedido
        SELECT VOLUME 
        INTO volume_pedido
        FROM PEDIDO
        WHERE ID_PEDIDO = :NEW.PEDIDO_ID_PEDIDO;

        --Para obter o armazem onde ele se encontra para passar a entregue ele vai buscar ao armazem de entrega
        --da ultima viagem
        -- Liberta o volume ocupado no armazém de destino
  UPDATE ARMAZEM
        SET CAPDISPONIVEL = CAPDISPONIVEL + volume_pedido
        WHERE ID_ARMAZEM = (
            SELECT ARMAZEM_ID_ARMAZEM1 -- Obtém o armazém de destino da última viagem 
            FROM (
                SELECT ARMAZEM_ID_ARMAZEM1, DHPARTIDA
                FROM VIAGEM
                JOIN PEDIDO_VIAGEM ON VIAGEM.ID_VIAGEM = PEDIDO_VIAGEM.VIAGEM_ID_VIAGEM
                WHERE PEDIDO_VIAGEM.PEDIDO_ID_PEDIDO = :NEW.PEDIDO_ID_PEDIDO
                ORDER BY DHPARTIDA DESC  
            )
            WHERE ROWNUM = 1 -- Vai buscar a ultima viagem do pedido para determinar o seu armazem de chegada
        );
    END IF;
END;

/
ALTER TRIGGER "AABDG23"."UPSTATUS_ENTREGA" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ALOCA_PEDIDOS_A_VIAGEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AABDG23"."ALOCA_PEDIDOS_A_VIAGEM" (
    cod_viagem VARCHAR2
) IS

    volume_disponivel NUMBER;
    peso_disponivel   NUMBER;
    volume_pedido     NUMBER;
    peso_pedido       NUMBER;
    tipo_mercadoria   VARCHAR2(30);
    tipo_servico      VARCHAR2(20);
    data_prev_fim     DATE;
    pedido_id         VARCHAR2(20);

  -- CURSOR PARA PERCORRER OS PEDIDOS PENDENTES
    CURSOR pedidos_pendentes IS
    SELECT
        p.id_pedido,
        p.volume,
        p.peso,
        tm.descricao                              AS tipo_mercadoria,
        s.id_servico                              AS tipo_servico,
        p.d_h_r + ( TO_NUMBER(p.temp_prev) / 24 ) AS data_prev_fim
    FROM
             pedido p
        JOIN tipomerc       tm ON p.tipomerc_id_tm = tm.id_tm
        JOIN servico_pedido sp ON p.id_pedido = sp.pedido_id_pedido
        JOIN servico        s ON sp.servico_id_servico = s.id_servico
        JOIN data_estado    de ON p.id_pedido = de.pedido_id_pedido
        JOIN estado         e ON de.estado_id_estado = e.id_estado
    WHERE
            de.estado_id_estado = 'E2' -- Em armazém
        AND de.processo = 'ON'       -- Processo ativo
        AND p.id_pedido NOT IN (
            SELECT
                pedido_id_pedido
            FROM
                pedido_viagem
        ) -- Não alocado em viagem
        AND EXISTS (
    --pertencem ao mesmo armazém de origem da viagem especificada pelo parâmetro 
            SELECT
                1
            FROM
                viagem v1
            WHERE
                    v1.id_viagem = cod_viagem
                AND v1.armazem_id_armazem = (
                    SELECT
                        v2.armazem_id_armazem
                    FROM
                        viagem v2
                    WHERE
                        v2.id_viagem = cod_viagem
                )
        )
    ORDER BY
        TO_NUMBER(p.prioridade) ASC,
        data_prev_fim ASC;

BEGIN
  -- OBTER O VOLUME E PESO DISPONÍVEL NA VIAGEM
    volume_disponivel := aabdg23.volume_disponivel(cod_viagem);
    SELECT
        vei.pesomercmax - vei.peso_ocupado
    INTO peso_disponivel
    FROM
             viagem_veiculo vv
        JOIN veiculo vei ON vv.veiculo_id_veiculo = vei.id_veiculo
    WHERE
        vv.viagem_id_viagem = cod_viagem;

  -- VERIFICAR SE A VIAGEM EXISTE

  -- PERCORRER OS PEDIDOS PENDENTES E ALOCAR À VIAGEM SE HOUVER ESPAÇO
    FOR pedido IN pedidos_pendentes LOOP
        volume_pedido := pedido.volume;
        peso_pedido := pedido.peso;
        tipo_mercadoria := pedido.tipo_mercadoria;
        tipo_servico := pedido.tipo_servico;
        data_prev_fim := pedido.data_prev_fim;
        pedido_id := pedido.id_pedido;

    --verifica se ha volume e peso disponivel para o pedido em questao
        IF volume_disponivel < volume_pedido THEN
            raise_application_error(-20822, 'Capacidade do Veículo atingiu o limite');
        END IF;
        IF peso_disponivel < peso_pedido THEN
            raise_application_error(-20823, 'Peso do Veículo atingiu o limite');
        END IF;

      -- INSERIR O PEDIDO NA VIAGEM
        INSERT INTO pedido_viagem (
            pedido_id_pedido,
            viagem_id_viagem
        ) VALUES (
            pedido_id,
            cod_viagem
        );

      -- ATUALIZAR O VOLUME E PESO OCUPADO NA VIAGEM
        UPDATE viagem
        SET
            volocupado = volocupado + volume_pedido
        WHERE
            id_viagem = cod_viagem;

        UPDATE veiculo
        SET
            peso_ocupado = peso_ocupado + peso_pedido
        WHERE
            id_veiculo = (
                SELECT
                    veiculo_id_veiculo
                FROM
                    viagem_veiculo
                WHERE
                    viagem_id_viagem = cod_viagem
            );

      -- ATUALIZAR O VOLUME E PESO DISPONÍVEL
        volume_disponivel := volume_disponivel - volume_pedido;
        peso_disponivel := peso_disponivel - peso_pedido;
    END LOOP;

END;

/
--------------------------------------------------------
--  DDL for Procedure ALTERA_ROTA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AABDG23"."ALTERA_ROTA" (
    cod_viagem             NUMBER,
    codigo_armazem_destino VARCHAR2
) IS

    cod_troco_original           troco.id_troco%TYPE;
    cod_troco_novo               troco.id_troco%TYPE;
    cod_armazem_origem           armazem.id_armazem%TYPE;
    cod_armazem_destino_original armazem.id_armazem%TYPE;
    dh_partida                   viagem.dhpartida%TYPE;
    dh_prev_inicio               viagem.dhprevinicio%TYPE;
    dh_prev_fim                  viagem.dhprevfim%TYPE;
    distancia_original           viagem.distancia%TYPE;
    distancia_novo_troco         troco.distancia%TYPE;
    distancia_restante           FLOAT;
    volume_ocupado               viagem.volocupado%TYPE;
    n_pedidos                    viagem.npedidos%TYPE;
    motorista_id                 viagem_motorista.motorista_id_motorista%TYPE;
    veiculo_id                   viagem_veiculo.veiculo_id_veiculo%TYPE;
    rota_id                      viagem_rota.rota_id_rota%TYPE;
    estado_pedido                data_estado.estado_id_estado%TYPE;
BEGIN
    -- Verificar se a viagem existe
    SELECT
        COUNT(*)
    INTO cod_troco_original
    FROM
        viagem
    WHERE
        id_viagem = cod_viagem;

    IF cod_troco_original = 0 THEN
        raise_application_error(-20804, 'Código de viagem inexistente.');
    END IF;

    -- Verificar se o armazém de destino existe
    SELECT
        COUNT(*)
    INTO cod_troco_original
    FROM
        armazem
    WHERE
        id_armazem = codigo_armazem_destino;

    IF cod_troco_original = 0 THEN
        raise_application_error(-20806, 'Código de armazém inexistente.');
    END IF;

    -- Verificar se a viagem já foi iniciada
    SELECT
        dhpartida
    INTO dh_partida
    FROM
        viagem
    WHERE
        id_viagem = cod_viagem;

    IF dh_partida <= sysdate THEN
        raise_application_error(-20824, 'Viagem já foi iniciada.');
    END IF;

    -- Obter informações da viagem original
    SELECT
        troco_id_troco,
        armazem_id_armazem,
        armazem_id_armazem1,
        dhprevfim,
        distancia
    INTO
        cod_troco_original,
        cod_armazem_origem,
        cod_armazem_destino_original,
        dh_prev_fim,
        distancia_original
    FROM
        viagem
    WHERE
        id_viagem = cod_viagem;

    -- Encontrar um novo troço com a mesma origem e destino no armazém especificado
    SELECT
        id_troco,
        distancia
    INTO
        cod_troco_novo,
        distancia_novo_troco
    FROM
        troco
    WHERE
            armazem_id_armazem = cod_armazem_origem
        AND armazem_id_armazem1 = codigo_armazem_destino;

    -- Verificar se existe um novo troço adequado
    IF cod_troco_novo IS NULL THEN
        raise_application_error(-20801, 'Não estão previstas viagens para esse troço.');
    END IF;


    -- Obter o motorista e o veículo da viagem original
    SELECT
        motorista_id_motorista,
        veiculo_id_veiculo,
        rota_id_rota
    INTO
        motorista_id,
        veiculo_id,
        rota_id
    FROM
             viagem_motorista vm
        JOIN viagem_veiculo vv ON vm.viagem_id_viagem = vv.viagem_id_viagem
        JOIN viagem_rota    vr ON vm.viagem_id_viagem = vr.viagem_id_viagem
    WHERE
        vm.viagem_id_viagem = cod_viagem;

        -- Verificar se o veículo tem capacidade para transportar os pedidos, pois o carro pode por questoes de gestao de frota.
    IF veiculo_disp_capac(veiculo_id, volume_ocupado) IS NULL THEN
        raise_application_error(-20822, 'Capacidade do Veículo atingiu o limite');
    END IF;

    -- Atualizar a viagem original com o novo troço
    UPDATE viagem
    SET
        troco_id_troco = cod_troco_novo,
        armazem_id_armazem1 = codigo_armazem_destino,
        distancia = distancia_novo_troco,
        dhprevfim = dhprevinicio + ( distancia_novo_troco / 100 ) -- Assumindo velocidade média de 100 km/h
    WHERE
        id_viagem = cod_viagem;



    -- Associar o motorista e o veículo à nova viagem
    UPDATE viagem_motorista
    SET
        motorista_id_motorista = motorista_id
    WHERE
        viagem_id_viagem = cod_viagem;

    UPDATE viagem_veiculo
    SET
        veiculo_id_veiculo = veiculo_id
    WHERE
        viagem_id_viagem = cod_viagem;

    UPDATE viagem_rota
    SET
        rota_id_rota = rota_id
    WHERE
        viagem_id_viagem = cod_viagem;
END;

/
--------------------------------------------------------
--  DDL for Procedure CANCELA_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AABDG23"."CANCELA_PEDIDO" (cod_pedido VARCHAR2) IS

    cod_viagem_original NUMBER;
    estado_pedido VARCHAR2(20);
    pedido_existe NUMBER;

BEGIN
    -- Verificar se o pedido existe
    SELECT COUNT(*)
    INTO pedido_existe
    FROM PEDIDO
    WHERE ID_PEDIDO = cod_pedido;

    IF pedido_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20805, 'Código de pedido de transporte inexistente');
    END IF;

    -- Verificar se o pedido já está associado a alguma viagem
    SELECT COUNT(*) 
    INTO cod_viagem_original
    FROM pedido_viagem pv
    WHERE pv.pedido_id_pedido = cod_pedido;

    -- Verificar condições para cancelamento
    IF cod_viagem_original > 0 THEN
        RAISE_APPLICATION_ERROR(-20819, 'O pedido já está associado a uma viagem.');
    END IF;

    -- Verificar o estado do pedido
    SELECT ESTADO_ID_ESTADO
    INTO estado_pedido
    FROM DATA_ESTADO
    WHERE PEDIDO_ID_PEDIDO = cod_pedido AND PROCESSO = 'ON';

    IF estado_pedido = 'E5' THEN
        RAISE_APPLICATION_ERROR(-20810, 'Pedido já entregue');
    END IF;

    -- Cancelar o pedido (definir o estado como 'E6' - Devolvido)
    INSERT INTO DATA_ESTADO (DATAHORA, ESTADO_ID_ESTADO, PEDIDO_ID_PEDIDO, PROCESSO)
    VALUES (SYSDATE, 'E6', cod_pedido, 'ON');
END;

/
--------------------------------------------------------
--  DDL for Procedure CRIA_VIAGEM_PONTUAL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AABDG23"."CRIA_VIAGEM_PONTUAL" (cod_armazem VARCHAR2)
IS
    cod_pedido_mais_antigo VARCHAR2(20);
    cod_troco             VARCHAR2(20);
    cod_viagem            NUMBER;
    data_recolha          DATE;
    volume_pedido         FLOAT;
    peso_pedido           FLOAT;
    tipo_mercadoria       VARCHAR2(20);
    tipo_servico          VARCHAR2(20);
    data_prevista_fim     DATE;
    veiculo_disponivel    VARCHAR2(20);
    armazem_existe        NUMBER;
BEGIN
    -- Verificar se o armazém existe
    SELECT COUNT(*)
    INTO armazem_existe
    FROM armazem
    WHERE id_armazem = cod_armazem;

    IF armazem_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20806, 'Código de armazém inexistente');
    END IF;

    -- Encontrar o pedido mais antigo que ainda não foi associado a uma viagem
    -- utilizando a função PEDIDO_MAIS_ANTIGO_NO_ARMAZEM
    cod_pedido_mais_antigo := PEDIDO_MAIS_ANTIGO_NO_ARMAZEM(cod_armazem);

    -- Verificar se existe algum pedido pendente
    IF cod_pedido_mais_antigo IS NULL THEN
        RAISE_APPLICATION_ERROR(-20805, 'Não existem pedidos pendentes neste armazém.');
    END IF;

    -- Obter informações do pedido mais antigo
    SELECT de.datahora,
           p.volume,
           p.peso,
           p.tipomerc_id_tm,
           sp.servico_id_servico
    INTO data_recolha,
         volume_pedido,
         peso_pedido,
         tipo_mercadoria,
         tipo_servico
    FROM pedido p
    JOIN data_estado de ON p.id_pedido = de.pedido_id_pedido
    JOIN servico_pedido sp ON p.id_pedido = sp.pedido_id_pedido
    WHERE p.id_pedido = cod_pedido_mais_antigo;

    -- Encontrar um troço adequado para o pedido
    SELECT t.id_troco
    INTO cod_troco
    FROM troco t
    WHERE t.armazem_id_armazem = cod_armazem -- Troço que começa no armazém especificado
    AND ROWNUM = 1;

    -- Verificar se existe um troço válido
    IF cod_troco IS NULL THEN
        RAISE_APPLICATION_ERROR(-20801, 'Não estão previstas viagens para esse troço.');
    END IF;

    -- Encontrar a próxima viagem com espaço disponível no troço
    cod_viagem := AABDG23.PROXIMA_VIAGEM_COM_ESPACO(cod_pedido_mais_antigo, cod_troco);

    -- Verificar se foi encontrada uma viagem
    IF cod_viagem IS NULL THEN
        RAISE_APPLICATION_ERROR(-20802, 'Não existe uma viagem para esse troço com capacidade para transportar o pedido.');
    END IF;

    -- Obter a data prevista de fim da viagem
    SELECT dhprevfim
    INTO data_prevista_fim
    FROM viagem
    WHERE id_viagem = cod_viagem;

    -- Encontrar um veículo disponível no armazém
    veiculo_disponivel := AABDG23.VEICULO_DISPONIVEL(cod_armazem, volume_pedido);

    -- Se não houver veículo disponível, lançar uma exceção
    IF veiculo_disponivel IS NULL THEN
        RAISE_APPLICATION_ERROR(-20809, 'Não há veículos disponíveis no armazém.');
    END IF;

    -- Associar o pedido à viagem
    INSERT INTO pedido_viagem (pedido_id_pedido, viagem_id_viagem)
    VALUES (cod_pedido_mais_antigo, cod_viagem);

    -- Atualizar o estado do pedido para "Em Transito"
    INSERT INTO data_estado (datahora, estado_id_estado, pedido_id_pedido, processo)
    VALUES (SYSDATE, 'E3', cod_pedido_mais_antigo, 'ON');

    -- Atualizar a data prevista de entrega do pedido
    UPDATE pedido
    SET temp_prev = TO_CHAR(data_prevista_fim - data_recolha, '999999999')
    WHERE id_pedido = cod_pedido_mais_antigo;

    -- Atualizar o volume e peso ocupado do veículo
    UPDATE veiculo vei
    SET vol_ocupado = vei.vol_ocupado + volume_pedido,
        peso_ocupado = vei.peso_ocupado + peso_pedido
    WHERE vei.id_veiculo = veiculo_disponivel;

    -- Atualizar o volume ocupado na viagem
    UPDATE viagem v
    SET volocupado = v.volocupado + volume_pedido
    WHERE v.id_viagem = cod_viagem;

    -- Associar o veículo à viagem
    UPDATE viagem_veiculo
    SET veiculo_id_veiculo = veiculo_disponivel
    WHERE viagem_id_viagem = cod_viagem;
END;

/
--------------------------------------------------------
--  DDL for Procedure CRIA_VIAGEM_REGULAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AABDG23"."CRIA_VIAGEM_REGULAR" (
    cod_armazem_origem  VARCHAR2,
    cod_armazem_destino VARCHAR2
) IS

    v_troco_id        VARCHAR2(20);
    v_veiculo_id      VARCHAR2(20);
    v_horario_partida DATE;
    v_horario_chegada DATE;
    v_rota_id         VARCHAR2(512);
    v_contador        NUMBER;
BEGIN
  -- Verificar se os armazéns existem
    SELECT
        COUNT(*)
    INTO v_contador
    FROM
        armazem
    WHERE
        id_armazem = cod_armazem_origem
        OR id_armazem = cod_armazem_destino;

    IF v_contador < 2 THEN
        raise_application_error(-20806, 'Código de armazém inexistente');
    END IF;

  -- Verificar se há um troço entre os armazéns e obter o ID da rota associada
    SELECT
        t.id_troco,
        r.id_rota
    INTO
        v_troco_id,
        v_rota_id
    FROM
             troco t
        JOIN rota_troco rt ON t.id_troco = rt.troco_id_troco
        JOIN rota       r ON rt.rota_id_rota = r.id_rota
    WHERE
            t.armazem_id_armazem = cod_armazem_origem
        AND t.armazem_id_armazem1 = cod_armazem_destino;

  -- Se não encontrar o troço, lançar exceção
    IF SQL%notfound THEN
        raise_application_error(-20801, 'Não estão previstas viagens para esse troço');
    END IF;

  -- Verificar se existe um veículo com capacidade maior que 30 m3 disponível no armazém de origem
    SELECT
        id_veiculo
    INTO v_veiculo_id
    FROM
        veiculo
    WHERE
            volmercmax > 30
        AND id_veiculo IN (
            SELECT
                veiculo_id_veiculo
            FROM
                veiculo_armazem
            WHERE
                armazem_id_armazem = cod_armazem_origem
        )
        AND vol_ocupado = 0;

  -- Se não encontrar veículo, lançar exceção
    IF SQL%notfound THEN
        raise_application_error(-20809, 'Não há veículos disponíveis no armazém');
    END IF;

  -- Encontrar o próximo horário de partida previsto na rota
    SELECT
        TO_DATE(to_char(sysdate, 'DD/MM/YYYY')
                || ' '
                || r.dia_hora,
                'DD/MM/YYYY HH24:MI')
    INTO v_horario_partida
    FROM
        (
            SELECT
                r.dia_hora,
                r.id_rota
            FROM
                rota r
            WHERE
                    r.id_rota = v_rota_id
                AND TO_DATE(to_char(sysdate, 'DD/MM/YYYY')
                            || ' '
                            || r.dia_hora,
        'DD/MM/YYYY HH24:MI') > sysdate
            ORDER BY
                TO_DATE(to_char(sysdate, 'DD/MM/YYYY')
                        || ' '
                        || r.dia_hora,
                        'DD/MM/YYYY HH24:MI') ASC
        ) r 
    WHERE
        ROWNUM = 1;

    IF v_horario_partida IS NULL THEN
        raise_application_error(-20820, 'Não há horário previsto');
    END IF;

  -- Calcular o horário de chegada previsto com base na duração média do troço
    SELECT
        v_horario_partida + t.duramedia
    INTO v_horario_chegada
    FROM
        troco t
    WHERE
        t.id_troco = v_troco_id;

  -- Criar nova viagem regular
    INSERT INTO viagem (
        id_viagem,
        dhpartida,
        armazem_id_armazem,
        armazem_id_armazem1,
        troco_id_troco,
        volocupado,
        dhprevinicio,
        dhprevfim
    ) VALUES (
        'V' || to_char(sysdate, 'YYYYMMDD'),
        NULL,
        cod_armazem_origem,
        cod_armazem_destino,
        v_troco_id,
        0,
        v_horario_partida,
        v_horario_chegada
    );

  -- Associar a rota à viagem
    INSERT INTO viagem_rota (
        viagem_id_viagem,
        rota_id_rota
    ) VALUES (
        'V' || to_char(sysdate, 'YYYYMMDD'),
        v_rota_id
    );

  -- Associar o veículo à viagem
    INSERT INTO veiculo_armazem (
        veiculo_id_veiculo,
        armazem_id_armazem
    ) VALUES (
        v_veiculo_id,
        cod_armazem_destino
    );

EXCEPTION
    WHEN no_data_found THEN
        raise_application_error(-20821, 'Erro ao criar a nova viagem');
END;

/
--------------------------------------------------------
--  DDL for Procedure DEVOLVE_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AABDG23"."DEVOLVE_PEDIDO" (cod_pedido VARCHAR2) IS 
--O pedido quando devolvido, é criado um novo ID_PEDIDO com os mesmo dados do original mas com o percurso das viagens no sentido inverso
    cod_viagem_original    VARCHAR2(20);
    cod_troco              VARCHAR2(20);
    cod_armazem_origem     VARCHAR2(20);
    cod_viagem_inversa     VARCHAR2(20);
    volume_pedido          NUMBER;
    peso_pedido            NUMBER;
    tipo_mercadoria        VARCHAR2(30);
    cod_novo_pedido        VARCHAR2(20);

--Obtem a informação sobre as viagens do pedido devolvido (sentido inverso ao original)
    CURSOR cur_viagens_inversas IS
        SELECT t.ID_TROCO, var.ID_ARMAZEM_RECOLHA
        FROM VIAGEM_ARMAZEM_RECOLHA var
                 JOIN VIAGEM v ON var.ID_VIAGEM = v.ID_VIAGEM
                 JOIN TROCO t ON v.TROCO_ID_TROCO = t.ID_TROCO
        WHERE var.ID_VIAGEM IN (
            SELECT pv.VIAGEM_ID_VIAGEM
            FROM PEDIDO_VIAGEM pv
            WHERE pv.PEDIDO_ID_PEDIDO = cod_pedido
        )
        ORDER BY var.ID_VIAGEM DESC; -- Ordem inversa

BEGIN
    -- Verificar se o pedido existe e se já foi entregue
    SELECT COUNT(*)
    INTO cod_viagem_original
    FROM pedido p
    JOIN data_estado de ON p.id_pedido = de.pedido_id_pedido
    WHERE p.id_pedido = cod_pedido
    AND de.estado_id_estado = 'E5';

    IF cod_viagem_original = 0 THEN
        RAISE_APPLICATION_ERROR(-20818, 'Código de pedido de transporte inexistente ou não foi entregue '); 
    END IF;

    -- Obter informações sobre o pedido original
    SELECT p.VOLUME, p.PESO, p.TIPOMERC_ID_TM
    INTO volume_pedido, peso_pedido, tipo_mercadoria
    FROM PEDIDO p
    WHERE p.ID_PEDIDO = cod_pedido;

    -- Criar o ID do novo pedido com o 'D' no final
    cod_novo_pedido := cod_pedido || 'D';

    -- Criar um novo pedido com o novo ID e os mesmos parametros e serviço economico
    INSERT INTO PEDIDO (ID_PEDIDO, VOLUME, PESO, TIPOMERC_ID_TM, PRIORIDADE, TEMP_PREV, N_TRANSPORTES, CUSTO)
    SELECT cod_novo_pedido, VOLUME, PESO, TIPOMERC_ID_TM, PRIORIDADE, TEMP_PREV, N_TRANSPORTES, CUSTO
    FROM PEDIDO
    WHERE ID_PEDIDO = cod_pedido;

    -- Inserir o novo pedido com servico 'economico'
    INSERT INTO SERVICO_PEDIDO (SERVICO_ID_SERVICO, PEDIDO_ID_PEDIDO)
    VALUES ('Economico', cod_novo_pedido);

    -- Percorrer as viagens em ordem inversa
    FOR viagem_inversa IN cur_viagens_inversas LOOP
        cod_troco          := viagem_inversa.ID_TROCO;
        cod_armazem_origem := viagem_inversa.ID_ARMAZEM_RECOLHA;

        -- Encontrar a próxima viagem com espaço no troço inverso
        cod_viagem_inversa := proxima_viagem_com_espaco(cod_novo_pedido, cod_troco);

        -- Verificar se existe uma viagem adequada
        IF cod_viagem_inversa IS NULL THEN
            RAISE_APPLICATION_ERROR(-20802, 'Não existe uma viagem para esse troço com capacidade para transportar o pedido.');
        END IF;

        -- Inserir o novo pedido na viagem inversa
        INSERT INTO PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO, VIAGEM_ID_VIAGEM)
        VALUES (cod_novo_pedido, cod_viagem_inversa);

        -- Atualizar o volume e peso ocupados na viagem inversa 
        UPDATE VIAGEM
        SET VOLOCUPADO = volume_disponivel(cod_viagem_inversa)
        WHERE ID_VIAGEM = cod_viagem_inversa;

        -- Atualizar o volume e peso ocupados no veículo da viagem inversa
        UPDATE VEICULO
        SET VOL_OCUPADO = VOL_OCUPADO + volume_pedido,
            PESO_OCUPADO = PESO_OCUPADO + peso_pedido 
        WHERE ID_VEICULO = (
            SELECT VEICULO_ID_VEICULO
            FROM VIAGEM_VEICULO
            WHERE VIAGEM_ID_VIAGEM = cod_viagem_inversa
        );
    END LOOP;

    -- Inserir o estado inicial do novo pedido (Devolvido)
    INSERT INTO DATA_ESTADO (DATAHORA, ESTADO_ID_ESTADO, PEDIDO_ID_PEDIDO, PROCESSO)
    VALUES (SYSDATE, 'E6', cod_novo_pedido, 'ON'); 

END;


/
--------------------------------------------------------
--  DDL for Procedure Q_PROC_2020151878
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AABDG23"."Q_PROC_2020151878" (
    cod_armazem VARCHAR2
) IS
    volume_pedidos_no_armazem NUMBER;
    capacidade_maxima         NUMBER;
    v_contador                NUMBER;
BEGIN
    SELECT
        COUNT(*)
    INTO v_contador
    FROM
        armazem
    WHERE
        id_armazem = cod_armazem;

    IF v_contador = 0 THEN
        raise_application_error(-20806, 'Código de armazém inexistente');
    END IF;

-- Calcular o volume total dos pedidos que estão no armazém ('Em armazém')
    SELECT
        SUM(p.volume)
    INTO volume_pedidos_no_armazem
    FROM
        pedido p
    WHERE
        p.id_pedido IN (
            SELECT
                de.pedido_id_pedido
            FROM
                data_estado de
            WHERE
                    de.estado_id_estado = 'E2'  -- Estado 'Em armazém'
                AND de.processo = 'ON'        -- Apenas pedidos ativos
        );


-- Obter a capacidade máxima do armazém
    SELECT
        capmaxima
    INTO capacidade_maxima
    FROM
        armazem
    WHERE
        id_armazem = cod_armazem;

-- Calcular e atualizar a capacidade disponível no armazém
    UPDATE armazem
    SET
        capdisponivel = capacidade_maxima - volume_pedidos_no_armazem
    WHERE
        id_armazem = cod_armazem;

END;

/
--------------------------------------------------------
--  DDL for Procedure Q_PROC_2022113359
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AABDG23"."Q_PROC_2022113359" (cod_pedido VARCHAR2) IS
v_viagem_id           VIAGEM.ID_VIAGEM%TYPE;
v_armazem_recolha     ARMAZEM.ID_ARMAZEM%TYPE;
v_armazem_entrega     ARMAZEM.ID_ARMAZEM%TYPE;
v_estado_atual        DATA_ESTADO.ESTADO_ID_ESTADO%TYPE;
v_proxima_viagem      VIAGEM.ID_VIAGEM%TYPE;
v_data_hora_atual     DATE;
v_viagem_existe       NUMBER;
v_pedido_existe       NUMBER;
BEGIN
-- Verificar se o pedido existe
SELECT COUNT(*) INTO v_pedido_existe
FROM PEDIDO
WHERE ID_PEDIDO = cod_pedido;

IF v_pedido_existe = 0 THEN
    RAISE_APPLICATION_ERROR(-20805, 'Código de pedido de transporte inexistente');
END IF;

-- Obter a viagem atual do pedido
SELECT VIAGEM_ID_VIAGEM
INTO v_viagem_id
FROM PEDIDO_VIAGEM
WHERE PEDIDO_ID_PEDIDO = cod_pedido;

-- Se o pedido não estiver associado a nenhuma viagem, significa que está em recolha
IF v_viagem_id IS NULL THEN
    v_estado_atual := 'E1'; -- Estado "A aguardar recolha"
ELSE
    -- Obter o estado atual do pedido
    SELECT ESTADO_ID_ESTADO
    INTO v_estado_atual
    FROM DATA_ESTADO
    WHERE PEDIDO_ID_PEDIDO = cod_pedido AND PROCESSO = 'ON';
END IF;

-- Obter a data e hora atual
v_data_hora_atual := SYSDATE;

-- Lógica para atualizar o estado do pedido
CASE v_estado_atual
    WHEN 'E1' THEN -- A aguardar recolha
        -- Atualizar para "Em armazém" no armazém de recolha da viagem
        UPDATE DATA_ESTADO
        SET DATAHORA = v_data_hora_atual, ESTADO_ID_ESTADO = 'E2'
        WHERE PEDIDO_ID_PEDIDO = cod_pedido AND ESTADO_ID_ESTADO = 'E1';

    WHEN 'E2' THEN -- Em armazém
        -- Verificar se a viagem já começou
        SELECT COUNT(*) INTO v_viagem_existe
        FROM VIAGEM
        WHERE ID_VIAGEM = v_viagem_id AND DHPARTIDA IS NOT NULL;

        IF v_viagem_existe > 0 THEN
            -- Se a viagem já começou, atualizar para "Em trânsito"
            UPDATE DATA_ESTADO
            SET DATAHORA = v_data_hora_atual, ESTADO_ID_ESTADO = 'E3'
            WHERE PEDIDO_ID_PEDIDO = cod_pedido AND ESTADO_ID_ESTADO = 'E2';
        END IF;

    WHEN 'E3' THEN -- Em trânsito
        -- Obter o armazém de entrega da viagem atual
        SELECT ARMAZEM_ID_ARMAZEM1
        INTO v_armazem_entrega
        FROM VIAGEM
        WHERE ID_VIAGEM = v_viagem_id;

        -- Atualizar para "Em armazém" no armazém de entrega
        UPDATE DATA_ESTADO
        SET DATAHORA = v_data_hora_atual, ESTADO_ID_ESTADO = 'E2'
        WHERE PEDIDO_ID_PEDIDO = cod_pedido AND ESTADO_ID_ESTADO = 'E3';

        -- Obter a próxima viagem do pedido (se existir)
        v_proxima_viagem := PROXIMA_VIAGEM_COM_ESPACO(cod_pedido, v_armazem_entrega);

        IF v_proxima_viagem IS NOT NULL THEN
            -- Se houver próxima viagem, atualizar para "Em trânsito" na próxima viagem
            UPDATE DATA_ESTADO
            SET DATAHORA = v_data_hora_atual, ESTADO_ID_ESTADO = 'E3'
            WHERE PEDIDO_ID_PEDIDO = cod_pedido AND ESTADO_ID_ESTADO = 'E2';
        ELSE
            -- Se não houver próxima viagem, significa que o pedido está no armazém final
            -- e deve ser atualizado para "A aguardar entrega"
            UPDATE DATA_ESTADO
            SET DATAHORA = v_data_hora_atual, ESTADO_ID_ESTADO = 'E4'
            WHERE PEDIDO_ID_PEDIDO = cod_pedido AND ESTADO_ID_ESTADO = 'E2';
        END IF;

    WHEN 'E4' THEN -- A aguardar entrega
        UPDATE DATA_ESTADO
        SET DATAHORA = v_data_hora_atual, ESTADO_ID_ESTADO = 'E5'
        WHERE PEDIDO_ID_PEDIDO = cod_pedido AND ESTADO_ID_ESTADO = 'E4';
END CASE;
END;

/
--------------------------------------------------------
--  DDL for Procedure Q_PROC_2022147149
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AABDG23"."Q_PROC_2022147149" (
    p_id_veiculo IN VEICULO.ID_VEICULO%TYPE
)
IS
    v_quilometragem_total        NUMBER := 0;
    v_data_ultima_revisao        VEICULO.DATA_ULTIMA_REVISAO%TYPE;
    v_quilometragem_desde_ultima NUMBER := 0;
    v_data_proxima_revisao       DATE;
BEGIN
    -- Obter a quilometragem total percorrida pelo veículo
    SELECT SUM(V.DISTANCIA)
    INTO v_quilometragem_total
    FROM VIAGEM V
    JOIN VIAGEM_VEICULO VV ON V.ID_VIAGEM = VV.VIAGEM_ID_VIAGEM
    WHERE VV.VEICULO_ID_VEICULO = p_id_veiculo;

    -- Obter a data da última revisão do veículo
    SELECT DATA_ULTIMA_REVISAO
    INTO v_data_ultima_revisao
    FROM VEICULO
    WHERE ID_VEICULO = p_id_veiculo;

    -- Calcular a quilometragem desde a última revisão
    v_quilometragem_desde_ultima := v_quilometragem_total - 40000;

    IF v_quilometragem_desde_ultima >= 40000 THEN
        -- Calcular a data da próxima revisão
        v_data_proxima_revisao := v_data_ultima_revisao + FLOOR(v_quilometragem_desde_ultima / 1000);

        -- Atualizar a data da última revisão para a data da próxima revisão
        UPDATE VEICULO
        SET DATA_ULTIMA_REVISAO = v_data_proxima_revisao
        WHERE ID_VEICULO = p_id_veiculo;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20816, 'Veículo ' || p_id_veiculo || ' não encontrado ou sem dados de revisão.');
END;

/
--------------------------------------------------------
--  DDL for Function PEDIDO_MAIS_ANTIGO_NO_ARMAZEM
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."PEDIDO_MAIS_ANTIGO_NO_ARMAZEM" (cod_armazem ARMAZEM.ID_ARMAZEM%TYPE)
RETURN PEDIDO.ID_PEDIDO%TYPE IS
    cod_pedido_mais_antigo PEDIDO.ID_PEDIDO%TYPE;
BEGIN
    -- Encontrar o pedido mais antigo que ainda não foi associado a uma viagem
    -- e que está no armazém há mais de 6 dias
    SELECT p.id_pedido
    INTO cod_pedido_mais_antigo
    FROM pedido p
    JOIN data_estado de ON p.id_pedido = de.pedido_id_pedido
    JOIN viagem_armazem_recolha var ON p.id_pedido = var.id_viagem
    WHERE de.estado_id_estado = 'E2'                          -- Estado 'Em armazém'
      AND de.processo = 'ON'                                
      AND p.id_pedido NOT IN (SELECT pedido_id_pedido FROM pedido_viagem) -- Não alocado
      AND var.id_armazem_recolha = cod_armazem                -- Filtrar pelo ID do armazém fornecido
      AND de.datahora <= SYSDATE - 6 -- Pedidos recolhidos há mais de 6 dias
      AND ROWNUM = 1                                       -- Obter apenas o primeiro resultado (o mais antigo)
    ORDER BY de.datahora ASC;                                -- Ordenar pela data e hora de entrada no estado 'Em armazém'

    RETURN cod_pedido_mais_antigo;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL; -- Retorna NULL se não encontrar nenhum pedido
END;

/
--------------------------------------------------------
--  DDL for Function P_FUNC_2020151878
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."P_FUNC_2020151878" (
    cod_viagem VARCHAR2
) RETURN NUMBER IS

    preco_km          NUMBER;
    kms_percorridos   NUMBER;
    custo_total       NUMBER;
    pedido_id_viagem  pedido_viagem.pedido_id_pedido%TYPE;
    servico_id_pedido servico_pedido.servico_id_servico%TYPE;
    v_contador        NUMBER;
BEGIN
-- Obter o ID do pedido associado à viagem
    SELECT
        pedido_id_pedido
    INTO pedido_id_viagem
    FROM
        pedido_viagem
    WHERE
        viagem_id_viagem = cod_viagem;

    SELECT
        COUNT(*)
    INTO v_contador
    FROM
        viagem
    WHERE
        id_viagem = cod_viagem;

    IF v_contador = 0 THEN
        raise_application_error(-20804, 'Código de viagem inexistente');
    END IF;
    IF pedido_id_viagem IS NULL THEN
        raise_application_error(-20805, 'Código de pedido de transporte inexistente');
    END IF;

-- Obter o ID do serviço associado ao pedido
    SELECT
        servico_id_servico
    INTO servico_id_pedido
    FROM
        servico_pedido
    WHERE
        pedido_id_pedido = pedido_id_viagem;

-- Obter o preço por km com base no tipo de serviço do pedido
    SELECT
        preco_km
    INTO preco_km
    FROM
        servico
    WHERE
        id_servico = servico_id_pedido;

-- Obter a distância total da viagem
    SELECT
        distancia
    INTO kms_percorridos
    FROM
        viagem
    WHERE
        id_viagem = cod_viagem;

-- Calcular o custo total
    custo_total := preco_km * kms_percorridos;
    RETURN custo_total;
END;

/
--------------------------------------------------------
--  DDL for Function P_FUNC_2022113359
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."P_FUNC_2022113359" 
-- atualiza o tempo previsto da entrega do pedido ao longo das várias fases
(
  p_cod_pedido IN PEDIDO.ID_PEDIDO%TYPE
) RETURN NUMBER IS
  l_tempo_previsto_inicial PEDIDO.TEMP_PREV%TYPE;
  l_tempo_realizado       NUMBER := 0;
  l_data_hora_atual       DATE;
  l_tempo_previsto_restante NUMBER;
  e_pedido_entregue       EXCEPTION;
  l_data_hora_inicio      DATE; 
BEGIN
  -- Obter o tempo previsto inicial (convertido para número)
  SELECT TO_NUMBER(TEMP_PREV)
  INTO l_tempo_previsto_inicial
  FROM PEDIDO
  WHERE ID_PEDIDO = p_cod_pedido;

  -- Obter a data e hora do primeiro registo do pedido
  SELECT DATAHORA 
  INTO l_data_hora_inicio
  FROM (
    SELECT DATAHORA
    FROM DATA_ESTADO
    WHERE PEDIDO_ID_PEDIDO = p_cod_pedido
    ORDER BY DATAHORA ASC
  )
  WHERE ROWNUM = 1; -- vai buscar a primeira data do estado do pedido

  l_data_hora_atual := SYSDATE;

  -- Calcular o tempo decorrido em minutos
  l_tempo_realizado := (l_data_hora_atual - l_data_hora_inicio) * 24 * 60; -- Diferença em dias * horas por dia * minutos por hora

  -- Calcula o tempo restante
  l_tempo_previsto_restante := l_tempo_previsto_inicial - l_tempo_realizado;
  IF l_tempo_previsto_restante < 0 THEN
    l_tempo_previsto_restante := 0;
  END IF;

  -- Atualiza o tempo previsto na tabela PEDIDO
  UPDATE PEDIDO
  SET TEMP_PREV = l_tempo_previsto_restante
  WHERE ID_PEDIDO = p_cod_pedido;

  RETURN l_tempo_previsto_restante;

EXCEPTION
  WHEN e_pedido_entregue THEN
    RAISE_APPLICATION_ERROR(-20810, 'Pedido já entregue');
END;

/
--------------------------------------------------------
--  DDL for Function P_FUNC_2022147149
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."P_FUNC_2022147149" 
--------------se percorrer + de 40000 km num trimestre recebe um premio de 500 euros
 (
    cod_motorista motorista.id_motorista%TYPE,
    ano_trimestre NUMBER,
    num_trimestre NUMBER
) RETURN NUMBER IS
    distancia_total  NUMBER := 0;
    premio           NUMBER := 0;
    motorista_existe NUMBER; 
BEGIN
    -- Verificar se o motorista existe
    SELECT
        COUNT(*)
    INTO motorista_existe
    FROM
        motorista
    WHERE
        id_motorista = cod_motorista;

    IF motorista_existe = 0 THEN
        raise_application_error(-20817, 'Motorista não encontrado.');
    END IF;

    -- Verificar se o trimestre é válido
    IF num_trimestre NOT BETWEEN 1 AND 4 THEN
        raise_application_error(-20815, 'Trimestre inválido.');
    END IF;

    -- Calcular a distância total percorrida pelo motorista no trimestre
    SELECT
        SUM(v.distancia)
    INTO distancia_total
    FROM
             viagem v
        JOIN viagem_motorista vm ON v.id_viagem = vm.viagem_id_viagem
    WHERE
            vm.motorista_id_motorista = cod_motorista
        AND EXTRACT(YEAR FROM v.dhpartida) = ano_trimestre
        AND EXTRACT(MONTH FROM v.dhpartida) BETWEEN ( num_trimestre - 1 ) * 3 + 1 AND num_trimestre * 3;
/* Calculo Trimestre
    (num_trimestre - 1) * 3 + 1: Calcula o mês de início do trimestre. 
    Exemplo: trimestre 3 -> (3 - 1) * 3 + 1 = 7 (julho)
    num_trimestre * 3: Calcula o mês de fim do trimestre.
    Exemplo: trimestre 3 -> 3 * 3 = 9 (setembro)
*/

    -- Calcular o premio com base na distância total
    IF distancia_total >= 40000 THEN
        premio := 500; -- valor do premio trimestral pago no mes seguinte
    END IF;
    RETURN premio;
END;

/
--------------------------------------------------------
--  DDL for Function PROXIMA_VIAGEM_COM_ESPACO
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."PROXIMA_VIAGEM_COM_ESPACO" (
    cod_pedido VARCHAR2,
    cod_troco VARCHAR2
) RETURN NUMBER IS
    volume_pedido  PEDIDO.VOLUME%TYPE;
    peso_pedido    PEDIDO.PESO%TYPE;
    cod_viagem     VIAGEM.ID_VIAGEM%TYPE;
    pedido_existe  NUMBER;
    troco_existe   NUMBER;
BEGIN
    -- Verificar se o pedido existe
    SELECT COUNT(*)
    INTO pedido_existe -- Usar uma variável diferente para armazenar o resultado
    FROM PEDIDO
    WHERE ID_PEDIDO = cod_pedido;

    IF pedido_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20805, 'Código de pedido de transporte inexistente');
    END IF;

    -- Verificar se o troço existe
    SELECT COUNT(*)
    INTO troco_existe -- Usar uma variável diferente para armazenar o resultado
    FROM TROCO
    WHERE ID_TROCO = cod_troco;

    IF troco_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20808, 'Código de troço inexistente');
    END IF;

    -- Obter o volume e peso do pedido
    SELECT VOLUME, PESO
    INTO volume_pedido, peso_pedido
    FROM PEDIDO
    WHERE ID_PEDIDO = cod_pedido;

    -- Encontrar a próxima viagem com espaço disponível
    SELECT ID_VIAGEM
    INTO cod_viagem
    FROM (
        SELECT V.ID_VIAGEM, VEI.VOLMERCMAX, VEI.PESOMERCMAX, V.VOLOCUPADO, VEI.PESO_OCUPADO
        FROM VIAGEM V
            JOIN VIAGEM_VEICULO VV ON V.ID_VIAGEM = VV.VIAGEM_ID_VIAGEM
            JOIN VEICULO VEI ON VV.VEICULO_ID_VEICULO = VEI.ID_VEICULO
        WHERE V.TROCO_ID_TROCO = cod_troco
            AND V.DHPREVINICIO > SYSDATE -- Viagens futuras
            AND (VEI.VOLMERCMAX - V.VOLOCUPADO) >= volume_pedido -- Verifica se há espaço suficiente
            AND (VEI.PESOMERCMAX - VEI.PESO_OCUPADO) >= peso_pedido -- Verifica se há peso disponível
        ORDER BY V.DHPREVINICIO ASC -- Ordena por data de partida
    )
    WHERE ROWNUM = 1; -- Seleciona apenas a primeira viagem

    -- Verificar se foi encontrada alguma viagem
    IF cod_viagem IS NULL THEN
        RAISE_APPLICATION_ERROR(-20802, 'Não existe uma viagem para esse troço com capacidade para transportar o pedido');
    END IF;

    RETURN cod_viagem;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20801, 'Não estão previstas viagens para esse troço');
END;

/
--------------------------------------------------------
--  DDL for Function TEM_CAPACIDADE_PARA_ARMAZENAR
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."TEM_CAPACIDADE_PARA_ARMAZENAR" (
  cod_pedido VARCHAR2,
  cod_armazem VARCHAR2
) RETURN NUMBER IS
  volume_pedido NUMBER;
  capacidade_disponivel NUMBER;
  resultado NUMBER := 1; 

  CURSOR pedidos_cursor IS
    SELECT volume
    FROM pedido
    WHERE id_pedido = cod_pedido;
BEGIN
  -- Verifica se o armazém existe
  SELECT COUNT(*) INTO capacidade_disponivel
  FROM armazem
  WHERE id_armazem = cod_armazem;

  IF capacidade_disponivel = 0 THEN
    RAISE_APPLICATION_ERROR(-20806, 'Código de armazém inexistente');
  END IF;

  -- Obter a capacidade disponível do armazém
  SELECT capdisponivel INTO capacidade_disponivel
  FROM armazem
  WHERE id_armazem = cod_armazem;

  -- Iteracao sobre o pedido 
  FOR pedido_rec IN pedidos_cursor LOOP
    volume_pedido := pedido_rec.volume;

    -- Verificar se o armazém tem capacidade para armazenar o pedido atual
    IF volume_pedido > capacidade_disponivel THEN
      resultado := 0; -- Não tem capacidade
      EXIT; -- Interrompe o loop, pois já foi encontrado um pedido que não cabe
    END IF;
  END LOOP;

  RETURN resultado; -- se tiver capacidade mantem resultado 1
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20805, 'Código de pedido de transporte inexistente');
END;

/
--------------------------------------------------------
--  DDL for Function VEICULO_DISP_CAPAC
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."VEICULO_DISP_CAPAC" 
--Funcao para ter um veiculo de modo a que a taxa de ocupacao a taxa de ocupacao seja inferior a 80%
(
  cod_armazem VARCHAR2,
  volume_atual NUMBER
) RETURN VARCHAR2 IS
  cod_veiculo VARCHAR2(20);
  volume_necessario NUMBER;
BEGIN
  -- Calcula o volume mínimo necessário para reduzir a taxa de ocupação para menos de 80%
  volume_necessario := volume_atual / 0.8; -- 80% de taxa de ocupação

  -- Encontra um veículo disponível no armazém com capacidade suficiente
  SELECT id_veiculo
  INTO cod_veiculo
  FROM (
    SELECT vei.id_veiculo
    FROM veiculo vei
    JOIN veiculo_armazem va ON vei.id_veiculo = va.veiculo_id_veiculo
    LEFT JOIN viagem_veiculo vv ON vei.id_veiculo = vv.veiculo_id_veiculo
    WHERE va.armazem_id_armazem = cod_armazem
      AND vei.volmercmax > volume_necessario -- o volume do carro tem de ser superior ao volume necessario (100% para ele ter 80% da taxa de ocupacao)
    ORDER BY vei.volmercmax ASC -- Prioriza veículos com a menor capacidade que ainda atenda aos requisitos
  )
  WHERE ROWNUM = 1; -- Limita a consulta ao primeiro resultado

  RETURN cod_veiculo;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN NULL; -- Retorna NULL se não encontrar nenhum veículo adequado
END;

/
--------------------------------------------------------
--  DDL for Function VEICULO_DISPONIVEL
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."VEICULO_DISPONIVEL" (
    cod_armazem VARCHAR2, 
    volume_minimo NUMBER
) RETURN VARCHAR2 IS 
    cod_veiculo VARCHAR2(20);
    ultima_viagem_id VARCHAR2(20);
BEGIN
    -- Verifica se o armazém existe
    SELECT COUNT(*)
    INTO cod_veiculo
    FROM armazem
    WHERE id_armazem = cod_armazem;

    IF cod_veiculo = 0 THEN
        RAISE_APPLICATION_ERROR(-20804, 'Código de viagem inexistente');
    END IF;

    -- Encontra a última viagem que terminou no armazém especificado
    SELECT id_viagem
    INTO ultima_viagem_id
    FROM (
        SELECT v.id_viagem
        FROM viagem v
        WHERE v.armazem_id_armazem1 = cod_armazem
        ORDER BY v.dhprevfim DESC
    )
    WHERE ROWNUM = 1; -- ultima viagem

    -- Encontra um veículo disponível no armazém com capacidade suficiente
    SELECT vei.id_veiculo
    INTO cod_veiculo
    FROM veiculo vei
        JOIN veiculo_armazem va ON vei.id_veiculo = va.veiculo_id_veiculo
        JOIN viagem_veiculo vv ON vei.id_veiculo = vv.veiculo_id_veiculo
    WHERE va.armazem_id_armazem = cod_armazem
        AND vv.viagem_id_viagem = ultima_viagem_id
        AND vei.volmercmax >= volume_minimo;

    -- Verifica se foi encontrado algum veículo
    IF cod_veiculo IS NULL THEN
        RAISE_APPLICATION_ERROR(-20809,  'não há veículos disponíveis no armazém');
    END IF;

    RETURN cod_veiculo;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20809, ' não há veículos disponíveis no armazém');
END;

/
--------------------------------------------------------
--  DDL for Function VOLUME_DISPONIVEL
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."VOLUME_DISPONIVEL" (cod_viagem VARCHAR2) 
RETURN NUMBER IS
    volume_maximo NUMBER;
    volume_ocupado NUMBER;
    volume_disponivel NUMBER;
BEGIN
    -- Obter o volume máximo do veículo associado à viagem
    SELECT v.volmercmax
    INTO volume_maximo
    FROM veiculo v
        JOIN viagem_veiculo vv ON v.id_veiculo = vv.veiculo_id_veiculo
    WHERE vv.viagem_id_viagem = cod_viagem;

    -- Obter o volume ocupado na viagem
    SELECT volocupado
    INTO volume_ocupado
    FROM viagem
    WHERE id_viagem = cod_viagem;

    -- Verificar se a viagem existe
    IF volume_ocupado IS NULL THEN
        RAISE_APPLICATION_ERROR(-20804, 'Código de viagem inexistente');
    END IF;

    -- Calcular o volume disponível
    volume_disponivel := volume_maximo - volume_ocupado;

    RETURN volume_disponivel;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20804, 'Código de viagem inexistente');
END;

/
--------------------------------------------------------
--  DDL for Function VOLUME_TIPO_DOS_PEDIDOS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AABDG23"."VOLUME_TIPO_DOS_PEDIDOS" (cod_viagem NUMBER, cod_tipo_servico VARCHAR2) RETURN NUMBER
IS
    volume_total NUMBER := 0; 
    viagem_existe NUMBER;
    servico_existe NUMBER;
BEGIN

    -- Verifica se o código da viagem existe
    SELECT COUNT(*) INTO viagem_existe 
    FROM VIAGEM 
    WHERE ID_VIAGEM = cod_viagem;

    IF viagem_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20804, 'Código de viagem inexistente');
    END IF;

    -- Verifica se o código do tipo de serviço existe
    SELECT COUNT(*) INTO servico_existe
    FROM SERVICO 
    WHERE ID_SERVICO = cod_tipo_servico;

    IF servico_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20807, 'Código de tipo de serviço inexistente');
    END IF;

    -- Calcula o volume total dos pedidos do tipo de serviço especificado para a viagem
    SELECT SUM(p.VOLUME)
    INTO volume_total
    FROM PEDIDO p
    JOIN SERVICO_PEDIDO sp ON p.ID_PEDIDO = sp.PEDIDO_ID_PEDIDO
    JOIN PEDIDO_VIAGEM pv ON p.ID_PEDIDO = pv.PEDIDO_ID_PEDIDO
    WHERE pv.VIAGEM_ID_VIAGEM = cod_viagem
    AND sp.SERVICO_ID_SERVICO = cod_tipo_servico;

    RETURN volume_total;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0; 
END;

/
--------------------------------------------------------
--  Constraints for Table VEICULO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VEICULO" MODIFY ("MATRICULA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VEICULO" MODIFY ("ANO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VEICULO" MODIFY ("MARCA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VEICULO" MODIFY ("ESPECIAL" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VEICULO" MODIFY ("TIPO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VEICULO" MODIFY ("MODELO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VEICULO" MODIFY ("PESOMERCMAX" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VEICULO" MODIFY ("VOLMERCMAX" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VEICULO" ADD PRIMARY KEY ("ID_VEICULO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "AABDG23"."VEICULO" ADD UNIQUE ("MATRICULA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE_PEDIDO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."CLIENTE_PEDIDO" MODIFY ("CLIENTE_ID_CLIENTE" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."CLIENTE_PEDIDO" ADD PRIMARY KEY ("PEDIDO_ID_PEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIAGEM
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM" MODIFY ("DISTANCIA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM" MODIFY ("DHPARTIDA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM" MODIFY ("NPEDIDOS" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM" MODIFY ("VOLOCUPADO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM" MODIFY ("DHPREVINICIO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM" MODIFY ("DHPREVFIM" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM" MODIFY ("ARMAZEM_ID_ARMAZEM" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM" MODIFY ("ARMAZEM_ID_ARMAZEM1" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM" MODIFY ("TROCO_ID_TROCO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM" ADD PRIMARY KEY ("ID_VIAGEM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ARMAZEM
--------------------------------------------------------

  ALTER TABLE "AABDG23"."ARMAZEM" MODIFY ("MORADA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."ARMAZEM" MODIFY ("COD_POSTAL" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."ARMAZEM" MODIFY ("CAPDISPONIVEL" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."ARMAZEM" MODIFY ("CAPMAXIMA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."ARMAZEM" ADD PRIMARY KEY ("ID_ARMAZEM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIAGEM_ROTA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_ROTA" MODIFY ("ROTA_ID_ROTA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM_ROTA" ADD PRIMARY KEY ("VIAGEM_ID_VIAGEM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SERVICO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."SERVICO" MODIFY ("PRECO_KM" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."SERVICO" MODIFY ("DURA_MAX" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."SERVICO" ADD PRIMARY KEY ("ID_SERVICO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIAGEM_VEICULO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_VEICULO" MODIFY ("VEICULO_ID_VEICULO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM_VEICULO" ADD PRIMARY KEY ("VIAGEM_ID_VIAGEM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPOMERC_TIPOMERC
--------------------------------------------------------

  ALTER TABLE "AABDG23"."TIPOMERC_TIPOMERC" ADD PRIMARY KEY ("TIPOMERC_ID_TM", "TIPOMERC_ID_TM1")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VEICULO_ARMAZEM
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VEICULO_ARMAZEM" MODIFY ("ARMAZEM_ID_ARMAZEM" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VEICULO_ARMAZEM" ADD PRIMARY KEY ("VEICULO_ID_VEICULO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PEDIDO_VIAGEM
--------------------------------------------------------

  ALTER TABLE "AABDG23"."PEDIDO_VIAGEM" ADD PRIMARY KEY ("PEDIDO_ID_PEDIDO", "VIAGEM_ID_VIAGEM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VEICULO_TIPOMERC
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VEICULO_TIPOMERC" ADD PRIMARY KEY ("VEICULO_ID_VEICULO", "TIPOMERC_ID_TM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "AABDG23"."CLIENTE" MODIFY ("NIF" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."CLIENTE" MODIFY ("NOME" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."CLIENTE" MODIFY ("MORADA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."CLIENTE" MODIFY ("TELEFONE" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."CLIENTE" ADD PRIMARY KEY ("ID_CLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "AABDG23"."CLIENTE" ADD UNIQUE ("NIF")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PEDIDO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."PEDIDO" MODIFY ("D_H_R" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."PEDIDO" MODIFY ("REMETENTE" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."PEDIDO" MODIFY ("DESTINATARIO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."PEDIDO" MODIFY ("PESO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."PEDIDO" MODIFY ("VOLUME" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."PEDIDO" MODIFY ("CUSTO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."PEDIDO" MODIFY ("TIPOMERC_ID_TM" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."PEDIDO" ADD PRIMARY KEY ("ID_PEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DATA_ESTADO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."DATA_ESTADO" ADD CONSTRAINT "PK_DATA_ESTADO" PRIMARY KEY ("DATAHORA", "ESTADO_ID_ESTADO", "PEDIDO_ID_PEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "AABDG23"."DATA_ESTADO" MODIFY ("DATAHORA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIAGEM_ARMAZEM_RECOLHA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_ARMAZEM_RECOLHA" ADD CONSTRAINT "ID_VIAGEM_ARMAZEM_PK" PRIMARY KEY ("ID_VIAGEM", "ID_ARMAZEM_RECOLHA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTADO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."ESTADO" MODIFY ("DESCRICAO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."ESTADO" ADD PRIMARY KEY ("ID_ESTADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TROCO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."TROCO" MODIFY ("ORIGEM" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."TROCO" MODIFY ("DESTINO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."TROCO" MODIFY ("DISTANCIA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."TROCO" MODIFY ("DURAMEDIA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."TROCO" MODIFY ("DURAMAX" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."TROCO" MODIFY ("ARMAZEM_ID_ARMAZEM" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."TROCO" MODIFY ("ARMAZEM_ID_ARMAZEM1" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."TROCO" ADD PRIMARY KEY ("ID_TROCO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIAGEM_MOTORISTA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_MOTORISTA" MODIFY ("MOTORISTA_ID_MOTORISTA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."VIAGEM_MOTORISTA" ADD PRIMARY KEY ("VIAGEM_ID_VIAGEM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROTA_TROCO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."ROTA_TROCO" MODIFY ("TROCO_ID_TROCO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."ROTA_TROCO" ADD PRIMARY KEY ("ROTA_ID_ROTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROTA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."ROTA" MODIFY ("DIA_HORA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."ROTA" ADD PRIMARY KEY ("ID_ROTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPOMERC
--------------------------------------------------------

  ALTER TABLE "AABDG23"."TIPOMERC" MODIFY ("DESCRICAO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."TIPOMERC" ADD PRIMARY KEY ("ID_TM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIAGEM_ARMAZEM_ENTREGA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_ARMAZEM_ENTREGA" ADD CONSTRAINT "ID_VIAGEM_ARMAZEM_ENTREGA_PK" PRIMARY KEY ("ID_VIAGEM", "ID_ARMAZEM_ENTREGA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MOTORISTA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."MOTORISTA" MODIFY ("NOME" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."MOTORISTA" MODIFY ("NIF" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."MOTORISTA" MODIFY ("N_SS" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."MOTORISTA" MODIFY ("N_CC" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."MOTORISTA" MODIFY ("N_SNS" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."MOTORISTA" MODIFY ("SALARIO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."MOTORISTA" MODIFY ("MORADA" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."MOTORISTA" MODIFY ("TELEFONE" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."MOTORISTA" ADD PRIMARY KEY ("ID_MOTORISTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "AABDG23"."MOTORISTA" ADD UNIQUE ("NIF", "N_SS", "N_CC", "N_SNS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SERVICO_PEDIDO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."SERVICO_PEDIDO" MODIFY ("SERVICO_ID_SERVICO" NOT NULL ENABLE);
 
  ALTER TABLE "AABDG23"."SERVICO_PEDIDO" ADD PRIMARY KEY ("PEDIDO_ID_PEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENTE_PEDIDO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."CLIENTE_PEDIDO" ADD CONSTRAINT "CLIENTE_PEDIDO_FK1" FOREIGN KEY ("CLIENTE_ID_CLIENTE")
	  REFERENCES "AABDG23"."CLIENTE" ("ID_CLIENTE") ENABLE;
 
  ALTER TABLE "AABDG23"."CLIENTE_PEDIDO" ADD CONSTRAINT "CLIENTE_PEDIDO_FK2" FOREIGN KEY ("PEDIDO_ID_PEDIDO")
	  REFERENCES "AABDG23"."PEDIDO" ("ID_PEDIDO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DATA_ESTADO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."DATA_ESTADO" ADD CONSTRAINT "DATA_ESTADO_FK1" FOREIGN KEY ("ESTADO_ID_ESTADO")
	  REFERENCES "AABDG23"."ESTADO" ("ID_ESTADO") ENABLE;
 
  ALTER TABLE "AABDG23"."DATA_ESTADO" ADD CONSTRAINT "DATA_ESTADO_FK2" FOREIGN KEY ("PEDIDO_ID_PEDIDO")
	  REFERENCES "AABDG23"."PEDIDO" ("ID_PEDIDO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PEDIDO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."PEDIDO" ADD CONSTRAINT "PEDIDO_FK1" FOREIGN KEY ("TIPOMERC_ID_TM")
	  REFERENCES "AABDG23"."TIPOMERC" ("ID_TM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PEDIDO_VIAGEM
--------------------------------------------------------

  ALTER TABLE "AABDG23"."PEDIDO_VIAGEM" ADD CONSTRAINT "PEDIDO_VIAGEM_FK1" FOREIGN KEY ("PEDIDO_ID_PEDIDO")
	  REFERENCES "AABDG23"."PEDIDO" ("ID_PEDIDO") ENABLE;
 
  ALTER TABLE "AABDG23"."PEDIDO_VIAGEM" ADD CONSTRAINT "PEDIDO_VIAGEM_FK2" FOREIGN KEY ("VIAGEM_ID_VIAGEM")
	  REFERENCES "AABDG23"."VIAGEM" ("ID_VIAGEM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ROTA_TROCO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."ROTA_TROCO" ADD CONSTRAINT "ROTA_TROCO_FK1" FOREIGN KEY ("ROTA_ID_ROTA")
	  REFERENCES "AABDG23"."ROTA" ("ID_ROTA") ENABLE;
 
  ALTER TABLE "AABDG23"."ROTA_TROCO" ADD CONSTRAINT "ROTA_TROCO_FK2" FOREIGN KEY ("TROCO_ID_TROCO")
	  REFERENCES "AABDG23"."TROCO" ("ID_TROCO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SERVICO_PEDIDO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."SERVICO_PEDIDO" ADD CONSTRAINT "SERVICO_PEDIDO_FK1" FOREIGN KEY ("SERVICO_ID_SERVICO")
	  REFERENCES "AABDG23"."SERVICO" ("ID_SERVICO") ENABLE;
 
  ALTER TABLE "AABDG23"."SERVICO_PEDIDO" ADD CONSTRAINT "SERVICO_PEDIDO_FK2" FOREIGN KEY ("PEDIDO_ID_PEDIDO")
	  REFERENCES "AABDG23"."PEDIDO" ("ID_PEDIDO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TIPOMERC_TIPOMERC
--------------------------------------------------------

  ALTER TABLE "AABDG23"."TIPOMERC_TIPOMERC" ADD CONSTRAINT "TIPOMERC_TIPOMERC_FK1" FOREIGN KEY ("TIPOMERC_ID_TM")
	  REFERENCES "AABDG23"."TIPOMERC" ("ID_TM") ENABLE;
 
  ALTER TABLE "AABDG23"."TIPOMERC_TIPOMERC" ADD CONSTRAINT "TIPOMERC_TIPOMERC_FK2" FOREIGN KEY ("TIPOMERC_ID_TM1")
	  REFERENCES "AABDG23"."TIPOMERC" ("ID_TM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TROCO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."TROCO" ADD CONSTRAINT "TROCO_FK1" FOREIGN KEY ("ARMAZEM_ID_ARMAZEM")
	  REFERENCES "AABDG23"."ARMAZEM" ("ID_ARMAZEM") ENABLE;
 
  ALTER TABLE "AABDG23"."TROCO" ADD CONSTRAINT "TROCO_FK2" FOREIGN KEY ("ARMAZEM_ID_ARMAZEM1")
	  REFERENCES "AABDG23"."ARMAZEM" ("ID_ARMAZEM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEICULO_ARMAZEM
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VEICULO_ARMAZEM" ADD CONSTRAINT "VEICULO_ARMAZEM_FK1" FOREIGN KEY ("VEICULO_ID_VEICULO")
	  REFERENCES "AABDG23"."VEICULO" ("ID_VEICULO") ENABLE;
 
  ALTER TABLE "AABDG23"."VEICULO_ARMAZEM" ADD CONSTRAINT "VEICULO_ARMAZEM_FK2" FOREIGN KEY ("ARMAZEM_ID_ARMAZEM")
	  REFERENCES "AABDG23"."ARMAZEM" ("ID_ARMAZEM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEICULO_TIPOMERC
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VEICULO_TIPOMERC" ADD CONSTRAINT "VEICULO_TIPOMERC_FK1" FOREIGN KEY ("VEICULO_ID_VEICULO")
	  REFERENCES "AABDG23"."VEICULO" ("ID_VEICULO") ENABLE;
 
  ALTER TABLE "AABDG23"."VEICULO_TIPOMERC" ADD CONSTRAINT "VEICULO_TIPOMERC_FK2" FOREIGN KEY ("TIPOMERC_ID_TM")
	  REFERENCES "AABDG23"."TIPOMERC" ("ID_TM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIAGEM
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM" ADD CONSTRAINT "VIAGEM_FK1" FOREIGN KEY ("ARMAZEM_ID_ARMAZEM")
	  REFERENCES "AABDG23"."ARMAZEM" ("ID_ARMAZEM") ENABLE;
 
  ALTER TABLE "AABDG23"."VIAGEM" ADD CONSTRAINT "VIAGEM_FK2" FOREIGN KEY ("ARMAZEM_ID_ARMAZEM1")
	  REFERENCES "AABDG23"."ARMAZEM" ("ID_ARMAZEM") ENABLE;
 
  ALTER TABLE "AABDG23"."VIAGEM" ADD CONSTRAINT "VIAGEM_FK3" FOREIGN KEY ("TROCO_ID_TROCO")
	  REFERENCES "AABDG23"."TROCO" ("ID_TROCO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIAGEM_ARMAZEM_ENTREGA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_ARMAZEM_ENTREGA" ADD CONSTRAINT "ID_VIAGEM_FK_ENTREGA" FOREIGN KEY ("ID_VIAGEM")
	  REFERENCES "AABDG23"."VIAGEM" ("ID_VIAGEM") ENABLE;
 
  ALTER TABLE "AABDG23"."VIAGEM_ARMAZEM_ENTREGA" ADD CONSTRAINT "VIAGEM_ARMAZEM_FK2_ENTREGA" FOREIGN KEY ("ID_ARMAZEM_ENTREGA")
	  REFERENCES "AABDG23"."ARMAZEM" ("ID_ARMAZEM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIAGEM_ARMAZEM_RECOLHA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_ARMAZEM_RECOLHA" ADD CONSTRAINT "ID_VIAGEM_FK" FOREIGN KEY ("ID_VIAGEM")
	  REFERENCES "AABDG23"."VIAGEM" ("ID_VIAGEM") ENABLE;
 
  ALTER TABLE "AABDG23"."VIAGEM_ARMAZEM_RECOLHA" ADD CONSTRAINT "VIAGEM_ARMAZEM_FK2" FOREIGN KEY ("ID_ARMAZEM_RECOLHA")
	  REFERENCES "AABDG23"."ARMAZEM" ("ID_ARMAZEM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIAGEM_MOTORISTA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_MOTORISTA" ADD CONSTRAINT "VIAGEM_MOTORISTA_FK1" FOREIGN KEY ("VIAGEM_ID_VIAGEM")
	  REFERENCES "AABDG23"."VIAGEM" ("ID_VIAGEM") ENABLE;
 
  ALTER TABLE "AABDG23"."VIAGEM_MOTORISTA" ADD CONSTRAINT "VIAGEM_MOTORISTA_FK2" FOREIGN KEY ("MOTORISTA_ID_MOTORISTA")
	  REFERENCES "AABDG23"."MOTORISTA" ("ID_MOTORISTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIAGEM_ROTA
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_ROTA" ADD CONSTRAINT "VIAGEM_ROTA_FK1" FOREIGN KEY ("VIAGEM_ID_VIAGEM")
	  REFERENCES "AABDG23"."VIAGEM" ("ID_VIAGEM") ENABLE;
 
  ALTER TABLE "AABDG23"."VIAGEM_ROTA" ADD CONSTRAINT "VIAGEM_ROTA_FK2" FOREIGN KEY ("ROTA_ID_ROTA")
	  REFERENCES "AABDG23"."ROTA" ("ID_ROTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIAGEM_VEICULO
--------------------------------------------------------

  ALTER TABLE "AABDG23"."VIAGEM_VEICULO" ADD CONSTRAINT "VIAGEM_VEICULO_FK1" FOREIGN KEY ("VIAGEM_ID_VIAGEM")
	  REFERENCES "AABDG23"."VIAGEM" ("ID_VIAGEM") ENABLE;
 
  ALTER TABLE "AABDG23"."VIAGEM_VEICULO" ADD CONSTRAINT "VIAGEM_VEICULO_FK2" FOREIGN KEY ("VEICULO_ID_VEICULO")
	  REFERENCES "AABDG23"."VEICULO" ("ID_VEICULO") ENABLE;
