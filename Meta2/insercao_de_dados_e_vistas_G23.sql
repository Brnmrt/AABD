--------------------------------------------------------
--  File created - segunda-feira-abril-15-2024   
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
	"TELEFONE" VARCHAR2(9 BYTE)
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
	"PESO_OCUPADO" NUMBER(10,0)
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
    -- Seleciona o ID do armaz m de recolha
        v.armazem_id_armazem  AS armazem_recolha,
    -- Seleciona o ID do armaz m de entrega
        v.armazem_id_armazem1 AS armazem_entrega,
    -- Seleciona a descri  o do estado
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
    -- Cl usulas de jun  o:
    -- Vincula o ID do pedido com o ID da viagem de recolha
            p.id_pedido = pv.pedido_id_pedido
        AND e.id_estado = 'E2'
    -- Vincula o ID da viagem de recolha com o ID da viagem
        AND pv.viagem_id_viagem = v.id_viagem
    -- Vincula o ID do pedido com o ID da data de estado (data da recolha)
        AND p.id_pedido = de.pedido_id_pedido
    -- Vincula o ID do estado (da recolha) com o ID do estado
        AND de.estado_id_estado = e.id_estado
    -- Vincula o ID do pedido com o ID do servi o do pedido 
        AND p.id_pedido = sp.pedido_id_pedido
    -- Vincula o ID do servi o do pedido com o ID do servi o 
        AND sp.servico_id_servico = s.id_servico
        AND v.armazem_id_armazem = armazem.id_armazem
    -- Restri  es:
    -- Seleciona apenas os pedidos recolhidos ontem
        AND p.d_h_r >= trunc(sysdate) - 1  
    -- Exclui os pedidos com tipo de servi o Urgente
        AND s.id_servico != 'Urgente'
        AND upper(armazem.morada) LIKE '%Lisboa%'  -- Seleciona apenas pedidos com armaz m de recolha em Lisboa
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
    -- Seleciona a matr cula do ve culo.
        veiculo.matricula                                          AS veiculo,
    -- Seleciona o ID do troco.
        troco.id_troco                                             AS troco,
    -- Converte o hor rio de partida para o formato 'DD/MM/YYYY HH24:MI:SS'.
        to_char(viagem.dhpartida, 'DD/MM/YYYY HH24:MI:SS')         AS horario_partida,
    -- Converte o hor rio de chegada para o formato 'DD/MM/YYYY HH24:MI:SS'. (ser  alterado para data do estado em armaz m)
        to_char(data_estado.datahora, 'DD/MM/YYYY HH24:MI:SS')     AS horario_chegada,
    -- Calcula a dura  o da viagem em minutos.
        round((data_estado.datahora - viagem.dhpartida) * 24 * 60) AS duracao_minutos,
    -- Seleciona a dist ncia percorrida em quil metros.
        viagem.distancia                                           AS kms_percorridos
    FROM
    -- Tabela 'pedido'   usada para identificar um pedido espec fico.
        pedido,
    -- Tabela 'pedido_viagem' relaciona pedidos com viagens.
        pedido_viagem,
    -- Tabela 'viagem' cont m informa  es sobre viagens.
        viagem,
    -- Tabela 'viagem_veiculo' relaciona viagens com ve culos.
        viagem_veiculo,
    -- Tabela 'veiculo' cont m informa  es sobre ve culos.
        veiculo,
    -- Tabela 'troco' cont m informa  es sobre trocos associados  s viagens.
        troco,
    -- Tabela 'data_estado' cont m informa  es sobre o estado de um pedido em determinado momento.
        data_estado
    WHERE
    -- Filtra pelo ID do pedido desejado.
            pedido.id_pedido = '2023041105'
    -- Filtra pelo estado 'E2', EM ARMAZEM em 'data_estado', a hora de chegada de uma viagem e quando o estado   em armazem
       AND data_estado.estado_id_estado = 'E2'
    -- Relaciona o pedido com 'pedido_viagem'.
        AND pedido.id_pedido = pedido_viagem.pedido_id_pedido
    -- Relaciona a viagem com 'pedido_viagem'.
        AND pedido_viagem.viagem_id_viagem = viagem.id_viagem
    -- Relaciona o pedido com 'data_estado'.
        AND pedido_viagem.pedido_id_pedido = data_estado.pedido_id_pedido
    -- Relaciona a viagem com 'viagem_veiculo'.
        AND viagem.id_viagem = viagem_veiculo.viagem_id_viagem
    -- Relaciona o ve culo com 'viagem_veiculo'.
        AND viagem_veiculo.veiculo_id_veiculo = veiculo.id_veiculo
    -- Relaciona a viagem com o troco.
        AND viagem.troco_id_troco = troco.id_troco
    -- Filtra os registos onde a datahora em 'data_estado'   posterior   data de partida da viagem.
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
    -- Seleciona o ID do servi o como 'tiposervico'.
        s.id_servico                                   AS tiposervico,
    -- Converte a data e hora do pedido para o formato 'DD/MM/YYYY HH24:MI'.
        to_char(p.d_h_r, 'DD/MM/YYYY HH24:MI')         AS datapedido,
    -- Converte a data e hora de recolha para o formato 'DD/MM/YYYY HH24:MI'.
        to_char(de.datahora, 'DD/MM/YYYY HH24:MI')     AS datarecolha,
    -- Converte a data e hora de entrada prevista na viagem para o formato 'DD/MM/YYYY HH24:MI'.
        to_char(v.dhprevinicio, 'DD/MM/YYYY HH24:MI')  AS dataentrada,
    -- Calcula o tempo restante at  a entrada prevista na viagem em minutos.
        round((v.dhprevinicio - sysdate) * 24 * 60, 0) AS temporestante
    FROM
    -- Tabela 'pedido'   usada para identificar pedidos.
        pedido      p,
    -- Tabela 'servico' cont m informa  es sobre tipos de servi o.
        servico     s,
    -- Tabela 'viagem' cont m informa  es sobre viagens.
        viagem      v,
    -- Tabela 'data_estado' cont m informa  es sobre o estado de um pedido em determinado momento.
        data_estado de,
    -- Tabela 'armazem' cont m informa  es sobre armaz ns.
        armazem     a
    WHERE
    -- Filtra os pedidos com tipo de mercadoria igual ao ID do servi o.
            p.tipomerc_id_tm = s.id_servico
    -- Relaciona o pedido com 'data_estado'.
        AND p.id_pedido = de.pedido_id_pedido
    -- Filtra pelos estados 'E2' em 'data_estado'.
        AND de.estado_id_estado = 'E2'
    -- Relaciona a viagem com o armaz m.
        AND v.armazem_id_armazem1 = a.id_armazem
    -- Verifica se a data de recolha est  dentro da semana atual.
        AND to_char(de.datahora, 'IW') = to_char(sysdate, 'IW')
    -- Filtra pelo endere o do armaz m.
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
    -- Seleciona o ID do tipo de servi o.
    servico_pedido.servico_id_servico                      AS tiposervico,
    -- Seleciona a data e hora do pedido.
    pedido.d_h_r                                           AS datapedido,
    -- Seleciona a data e hora do estado do pedido (entrada no armaz m).
    data_estado.datahora                                   AS dataentrada,
    -- Calcula o tempo restante em minutos entre a entrada no armaz m e a data/hora atual.
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
-- Condi  es de jun  o.
WHERE
        -- Condi  o de jun  o entre tabelas
        armazem.id_armazem = viagem.armazem_id_armazem
    AND pedido.id_pedido = pedido_viagem.pedido_id_pedido
    AND pedido.id_pedido = data_estado.pedido_id_pedido
    AND pedido_viagem.viagem_id_viagem = viagem.id_viagem
    AND data_estado.estado_id_estado = 'E2' -- Considera apenas o estado E2 (no armaz m)
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
    -- Seleciona o ID do armaz m e d -lhe o alias 'armazem'.
        a.id_armazem  AS armazem,
    -- Seleciona a descri  o do tipo de mercadoria e d -lhe o alias 'tipomercadoria'.
        t.descricao   AS tipomercadoria,
    -- Calcula a m dia do volume das mercadorias e d -lhe o alias 'volumemedio'.
        AVG(p.volume) AS volumemedio
    FROM
    -- Tabela 'armazem'   renomeada como 'a'.
        armazem                a,
    -- Tabela 'tipomerc'   renomeada como 't'.
        tipomerc               t,
    -- Tabela 'pedido'   renomeada como 'p'.
        pedido                 p,
    -- Tabela 'pedido_viagem'   renomeada como 'pv'.
        pedido_viagem          pv,
    -- Tabela 'viagem'   renomeada como 'v'.
        viagem                 v,
    -- Tabela 'viagem_armazem_recolha'   renomeada como 'varec'.
        viagem_armazem_recolha varec
    WHERE
    -- Relaciona o ID do armaz m na tabela 'armazem' com o ID do armaz m na tabela 'viagem'.
            a.id_armazem = v.armazem_id_armazem
    -- Relaciona o ID do pedido na tabela 'pedido' com o ID do pedido na tabela 'pedido_viagem'.
        AND p.id_pedido = pv.pedido_id_pedido
    -- Relaciona o ID da viagem na tabela 'pedido_viagem' com o ID da viagem na tabela 'viagem'.
        AND pv.viagem_id_viagem = v.id_viagem
    -- Relaciona o ID da viagem na tabela 'viagem_armazem_recolha' com o ID da viagem na tabela 'viagem'.
        AND varec.id_viagem = v.id_viagem
    -- Relaciona o ID do tipo de mercadoria na tabela 'tipomerc' com o ID do tipo de mercadoria na tabela 'pedido'.
        AND t.id_tm = p.tipomerc_id_tm
    -- Filtra os armaz ns que est o localizados em Coimbra.
        AND upper(a.morada) LIKE '%COIMBRA%'
    -- Filtra os anos de 2021 e 2022 para as viagens.
        AND to_char(v.dhprevinicio, 'YYYY') IN ( '2021', '2022' )
    GROUP BY
    -- Agrupa os resultados pelo ID do armaz m e pela descri  o do tipo de mercadoria.
        a.id_armazem,
        t.descricao
    ORDER BY
    -- Ordena os resultados pela m dia do volume das mercadorias em ordem decrescente.
        volumemedio DESC
;
--------------------------------------------------------
--  DDL for View VIEW_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_F" ("NUM_PEDIDOS_TEMP_ARM", "MEDIA_TEMPO_RESTANTE") AS 
  SELECT
    -- Conta o n mero de pedidos distintos temporariamente no armaz m e d -lhe o alias 'num_pedidos_temp_arm'.
        COUNT(DISTINCT clp.pedido_id_pedido) AS num_pedidos_temp_arm,
    -- Calcula a m dia do tempo restante dos pedidos, convertendo o tempo previsto para n mero e d -lhe o alias 'media_tempo_restante'.
        AVG(TO_NUMBER(p.temp_prev))          AS media_tempo_restante
    FROM
    -- Tabela 'data_estado'   renomeada como 'est'.
        data_estado    est,
    -- Tabela 'pedido'   renomeada como 'p'.
        pedido         p,
    -- Tabela 'cliente_pedido'   renomeada como 'clp'.
        cliente_pedido clp,
    -- Tabela 'estado'   renomeada como 'e'.
        estado         e,
    -- Tabela 'armazem'   renomeada como 'amo'.
        armazem        amo
    WHERE
    -- Relaciona o ID do pedido na tabela 'data_estado' com o ID do pedido na tabela 'pedido'.
            est.pedido_id_pedido = p.id_pedido
    -- Relaciona o ID do pedido na tabela 'pedido' com o ID do pedido na tabela 'cliente_pedido'.
        AND p.id_pedido = clp.pedido_id_pedido
    -- Relaciona o ID do estado na tabela 'data_estado' com o ID do estado na tabela 'estado'.
        AND est.estado_id_estado = e.id_estado
    -- Filtra os registos onde a descri  o do estado   'E2'.
        AND e.descricao = 'E2'
    -- Filtra os registos onde a capacidade dispon vel dividida pela capacidade m xima do armaz m   igual ao m nimo dessa propor  o multiplicado por 100.
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
    -- Seleciona o n mero de transportes.
        num_transportes,
    -- Seleciona o volume transportado.
        volume_transportado
    FROM
        (
            SELECT
            -- Seleciona a morada do armaz m e d -lhe o alias 'cidade'.
                a.morada        AS cidade,
            -- Seleciona a descri  o do tipo de mercadoria e d -lhe o alias 'tipo_mercadoria'.
                tm.descricao    AS tipo_mercadoria,
            -- Seleciona o n mero de transportes e d -lhe o alias 'num_transportes'.
                p.n_transportes AS num_transportes,
            -- Calcula a soma do volume das mercadorias e d -lhe o alias 'volume_transportado'.
                SUM(p.volume)   AS volume_transportado,
            -- A fun  o RANK() atribui uma classifica  o aos registos com base na soma do volume das mercadorias em ordem decrescente.
                RANK()
                OVER(
                    ORDER BY
                        SUM(p.volume) DESC
                )               AS rank_volume
            FROM
            -- Tabela 'pedido'   renomeada como 'p'.
                pedido        p,
            -- Tabela 'tipomerc'   renomeada como 'tm'.
                tipomerc      tm,
            -- Tabela 'armazem'   renomeada como 'a'.
                armazem       a,
            -- Tabela 'data_estado'   renomeada como 'de'.
                data_estado   de,
            -- Tabela 'estado'   renomeada como 'e'.
                estado        e,
            -- Tabela 'viagem'   renomeada como 'v'.
                viagem        v,
            -- Tabela 'pedido_viagem'   renomeada como 'pedv'.
                pedido_viagem pedv
            WHERE
            -- Relaciona o ID do tipo de mercadoria na tabela 'pedido' com o ID do tipo de mercadoria na tabela 'tipomerc'.
                    p.tipomerc_id_tm = tm.id_tm
            -- Relaciona o ID do pedido na tabela 'pedido' com o ID do pedido na tabela 'pedido_viagem'.
                AND p.id_pedido = pedv.pedido_id_pedido
            -- Relaciona o ID da viagem na tabela 'viagem' com o ID da viagem na tabela 'pedido_viagem'.
                AND v.id_viagem = pedv.viagem_id_viagem
            -- Relaciona o ID do armaz m na tabela 'viagem' com o ID do armaz m na tabela 'armazem'.
                AND v.armazem_id_armazem1 = a.id_armazem
            -- Filtra os registos onde o n mero de transportes   maior que 3.
                AND p.n_transportes > 3
            -- Filtra os registos para incluir apenas pedidos do ano anterior.
                AND EXTRACT(YEAR FROM p.d_h_r) = EXTRACT(YEAR FROM sysdate) - 1
            GROUP BY
            -- Agrupa os resultados pela morada do armaz m, descri  o do tipo de mercadoria e n mero de transportes.
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
    -- Seleciona o ID do ve culo.
        vei.id_veiculo,
    -- Seleciona a matr cula do ve culo.
        vei.matricula,
    -- Seleciona a marca do ve culo.
        vei.marca,
    -- Seleciona o modelo do ve culo.
        vei.modelo,
    -- Seleciona o n mero de viagens realizadas.
        p.n_transportes AS numero_viagens
    FROM
    -- Tabela 'viagem_veiculo'   renomeada como 'vv'.
        viagem_veiculo vv,
    -- Tabela 'viagem'   renomeada como 'v'.
        viagem         v,
    -- Tabela 'veiculo'   renomeada como 'vei'.
        veiculo        vei,
    -- Tabela 'pedido'   renomeada como 'p'.
        pedido         p
    WHERE
        -- Relaciona o ID da viagem na tabela 'viagem_veiculo' com o ID da viagem na tabela 'viagem'.
            vv.viagem_id_viagem = v.id_viagem
    -- Filtra os registos onde a dist ncia da viagem   maior que 200.
        AND v.distancia > 200
    -- Filtra os registos onde o volume ocupado do ve culo   superior a 80% do volume m ximo.
        AND vei.vol_ocupado > 0.8 * vei.volmercmax
    -- Filtra os registos para incluir apenas viagens do m s anterior.
        AND EXTRACT(MONTH FROM v.dhpartida) = EXTRACT(MONTH FROM sysdate) - 1
    -- Relaciona o ID do ve culo na tabela 'veiculo' com o ID do ve culo na tabela 'viagem_veiculo'.
        AND vei.id_veiculo = vv.veiculo_id_veiculo
    -- Filtra os registos para incluir apenas ve culos que transportam animais vivos.
        AND vei.id_veiculo IN (
            SELECT
                vei.id_veiculo
            FROM
            -- Tabela 'veiculo_tipomerc'   renomeada como 'vtm'.
                veiculo_tipomerc vtm,
            -- Tabela 'tipomerc'   renomeada como 'tm'.
                 tipomerc         tm
            WHERE
                -- Relaciona o ID do ve culo na tabela 'veiculo_tipomerc' com o ID do ve culo na tabela 'veiculo'.
                    vtm.veiculo_id_veiculo = vei.id_veiculo
            -- Filtra os registos para incluir apenas tipos de mercadoria 'Animais vivos'.
                AND tm.descricao = 'Animais vivos'
        )
    ORDER BY
    -- Ordena os resultados pelo n mero de viagens em ordem decrescente.
        5 DESC
;
--------------------------------------------------------
--  DDL for View VIEW_I
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_I" ("ARMAZEM", "N  TRANSPORTES", "VOLUMETOTAL", "PESOTOTAL") AS 
  SELECT
        "ARMAZEM","N  TRANSPORTES","VOLUMETOTAL","PESOTOTAL"
    FROM
        (
        -- Subconsulta que calcula as informa  es agregadas e ordena pelo volume total em ordem decrescente.
            SELECT
            -- Seleciona a morada do armaz m e d  um alias de coluna como "ARMAZEM".
                a.morada             AS "ARMAZEM",
            -- Calcula a soma do n mero de transportes e d  um alias de coluna como "N  TRANSPORTES".
                SUM(p.n_transportes) AS "N  TRANSPORTES",
            -- Calcula a soma do volume total e d  um alias de coluna como "VOLUMETOTAL".
                SUM(p.volume)        AS "VOLUMETOTAL",
            -- Calcula a soma do peso total e d  um alias de coluna como "PESOTOTAL".
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
                -- Relaciona o ID do armaz m na tabela 'viagem' com o ID do armaz m na tabela 'armazem'.
                    v.armazem_id_armazem1 = a.id_armazem
            -- Relaciona o ID da viagem na tabela 'viagem' com o ID da viagem na tabela 'viagem_veiculo'.
                AND v.id_viagem = vv.viagem_id_viagem
            -- Relaciona o ID do ve culo na tabela 'viagem_veiculo' com o ID do ve culo na tabela 'veiculo'.
                AND vv.veiculo_id_veiculo = vcl.id_veiculo
            -- Relaciona o ID da viagem na tabela 'viagem' com o ID da viagem na tabela 'pedido_viagem'.
                AND v.id_viagem = pv.viagem_id_viagem
            -- Relaciona o ID do pedido na tabela 'pedido_viagem' com o ID do pedido na tabela 'pedido'.
                AND pv.pedido_id_pedido = p.id_pedido
            -- Filtra os registos para incluir apenas viagens do ano atual.
                AND EXTRACT(YEAR FROM v.dhprevinicio) = EXTRACT(YEAR FROM sysdate)
            GROUP BY
            -- Agrupa os resultados pela morada do armaz m.
                a.morada
            ORDER BY
            -- Ordena os resultados pelo volume total em ordem decrescente.
                SUM(p.volume) DESC
        )
    WHERE
    -- Filtra os resultados para incluir apenas os tr s primeiros registos.
        ROWNUM <= 3
;
--------------------------------------------------------
--  DDL for View VIEW_J
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_J" ("CIDADE", "TIPO_MERCADORIA", "TEMPO_MEDIO") AS 
  SELECT
    -- Seleciona a morada do armaz m e d  um alias de coluna como "cidade".
        a.morada    AS cidade,
    -- Seleciona a descri  o do tipo de mercadoria e d  um alias de coluna como "tipo_mercadoria".
        t.descricao AS tipo_mercadoria,
    -- Calcula o tempo m dio de entrega em horas e arredonda para duas casas decimais.
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
    -- Relaciona o ID do armaz m na tabela 'pedido' com o ID do armaz m na tabela 'armazem'.
        AND v.armazem_id_armazem = a.id_armazem
    -- Filtra os registos para incluir apenas armaz ns em Lisboa.
        AND a.morada LIKE '%Lisboa%'
    -- Filtra os registos para incluir apenas datas de entrega dos  ltimos 7 dias.
        AND de2.datahora >= trunc(sysdate) - 7
        AND de2.datahora < trunc(sysdate)
    -- Junta as informa  es da tabela 'pedido_viagem' com 'viagem'.
        AND p.id_pedido = pedv.pedido_id_pedido
        AND pedv.viagem_id_viagem = v.id_viagem
-- Agrupa os resultados pela morada do armaz m e pela descri  o do tipo de mercadoria.
    GROUP BY
        a.morada,
        t.descricao
-- Ordena os resultados pelo tempo m dio em ordem crescente.
    ORDER BY
        tempo_medio
;
--------------------------------------------------------
--  DDL for View VIEW_K
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_K" ("CIDADE", "TIPO_MERCADORIA", "TEMPO_MEDIO_SEMANA_ATUAL", "TEMPO_MEDIO_SEMANA_ANTERIOR", "VARIACAO_PERCENTUAL") AS 
  WITH tempo_medio_semana_atual AS (
    -- Calcula o tempo m dio de entrega para a semana atual.
        SELECT
            a.morada    AS cidade,                    -- Seleciona a morada do armaz m como 'cidade' da tabela ARMAZEM e d -lhe o alias 'cidade'.
            t.descricao AS tipo_mercadoria,          -- Seleciona a descri  o do tipo de mercadoria da tabela TIPOMERC e d -lhe o alias 'tipo_mercadoria'.
            round(AVG((de2.datahora - de1.datahora) * 24),
                  2)    AS tempo_medio  -- Calcula a m dia do tempo de entrega em horas e arredonda para duas casas decimais.
        FROM
            pedido        p,                         -- Tabela de pedidos, com o alias P.
            data_estado   de1,                       -- Tabela de estados de dados, com o alias DE1.
            data_estado   de2,                       -- Tabela de estados de dados, com o alias DE2.
            tipomerc      t,                         -- Tabela de tipos de mercadoria, com o alias T.
            armazem       a,                         -- Tabela de armaz ns, com o alias A.
            viagem        v,                         -- Tabela de viagens, com o alias V.
            pedido_viagem pedv                      -- Tabela de rela  o entre pedidos e viagens, com o alias PEDV.
        WHERE
                p.id_pedido = de1.pedido_id_pedido                      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (primeiro estado) pelo ID_PEDIDO.
            AND p.id_pedido = de2.pedido_id_pedido                      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (segundo estado) pelo ID_PEDIDO.
            AND de1.estado_id_estado = 'E4'                            -- Condi  o para o primeiro estado ser 'a aguardar entrega'.
            AND de2.estado_id_estado = 'E5'                            -- Condi  o para o segundo estado ser 'finalizado'.
            AND p.tipomerc_id_tm = t.id_tm                             -- Junta a tabela PEDIDO com a tabela TIPOMERC pelo ID_TM.
            AND p.id_pedido = pedv.pedido_id_pedido                    -- Junta a tabela PEDIDO com a tabela PEDIDO_VIAGEM pelo ID_PEDIDO.
            AND pedv.viagem_id_viagem = v.id_viagem                    -- Junta a tabela PEDIDO_VIAGEM com a tabela VIAGEM pelo VIAGEM_ID_VIAGEM.
            AND v.armazem_id_armazem = a.id_armazem                    -- Junta a tabela VIAGEM com a tabela ARMAZEM pelo ARMAZEM_ID_ARMAZEM.
            AND a.morada LIKE '%Lisboa%'                               -- Filtra os armaz ns localizados em Lisboa.
            AND de2.datahora >= trunc(sysdate) - 7                      -- Filtra os registos da  ltima semana.
            AND de2.datahora < trunc(sysdate)                           -- Garante que os registos pertencem   semana atual.
        GROUP BY
            a.morada,                                                  -- Agrupa os resultados pela morada do armaz m.
            t.descricao                                                -- Agrupa os resultados pela descri  o do tipo de mercadoria.
    ), tempo_medio_semana_anterior AS (
    -- Calcula o tempo m dio de entrega para a semana anterior.
        SELECT
            a.morada    AS cidade,                    -- Seleciona a morada do armaz m como 'cidade' da tabela ARMAZEM e d -lhe o alias 'cidade'.
            t.descricao AS tipo_mercadoria,          -- Seleciona a descri  o do tipo de mercadoria da tabela TIPOMERC e d -lhe o alias 'tipo_mercadoria'.
            round(AVG((de2.datahora - de1.datahora) * 24),
                  2)    AS tempo_medio  -- Calcula a m dia do tempo de entrega em horas e arredonda para duas casas decimais.
        FROM
            pedido        p,                         -- Tabela de pedidos, com o alias P.
            data_estado   de1,                       -- Tabela de estados de dados, com o alias DE1.
            data_estado   de2,                       -- Tabela de estados de dados, com o alias DE2.
            tipomerc      t,                         -- Tabela de tipos de mercadoria, com o alias T.
            armazem       a,                         -- Tabela de armaz ns, com o alias A.
            viagem        v,                         -- Tabela de viagens, com o alias V.
            pedido_viagem pedv                      -- Tabela de rela  o entre pedidos e viagens, com o alias PEDV.
        WHERE
                p.id_pedido = de1.pedido_id_pedido                      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (primeiro estado) pelo ID_PEDIDO.
            AND p.id_pedido = de2.pedido_id_pedido                      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (segundo estado) pelo ID_PEDIDO.
            AND de1.estado_id_estado = 'E4'                            -- Condi  o para o primeiro estado ser 'a aguardar entrega'.
            AND de2.estado_id_estado = 'E5'                            -- Condi  o para o segundo estado ser 'finalizado'.
            AND p.tipomerc_id_tm = t.id_tm                             -- Junta a tabela PEDIDO com a tabela TIPOMERC pelo ID_TM.
            AND p.id_pedido = pedv.pedido_id_pedido                    -- Junta a tabela PEDIDO com a tabela PEDIDO_VIAGEM pelo ID_PEDIDO.
            AND pedv.viagem_id_viagem = v.id_viagem                    -- Junta a tabela PEDIDO_VIAGEM com a tabela VIAGEM pelo VIAGEM_ID_VIAGEM.
            AND v.armazem_id_armazem = a.id_armazem                    -- Junta a tabela VIAGEM com a tabela ARMAZEM pelo ARMAZEM_ID_ARMAZEM.
            AND a.morada LIKE '%Lisboa%'                               -- Filtra os armaz ns localizados em Lisboa.
            AND de2.datahora >= trunc(sysdate) - 14                     -- Filtra os registos da semana anterior.
            AND de2.datahora < trunc(sysdate) - 7                      -- Garante que os registos pertencem   semana anterior.
        GROUP BY
            a.morada,                                                  -- Agrupa os resultados pela morada do armaz m.
            t.descricao                                                -- Agrupa os resultados pela descri  o do tipo de mercadoria.
    )
-- Combina os resultados das consultas para a semana atual e anterior, calculando a varia  o percentual no tempo m dio de entrega.
    SELECT
        sa.cidade                                                            AS cidade,                             -- Seleciona a cidade (morada do armaz m) da semana atual.
        sa.tipo_mercadoria                                                   AS tipo_mercadoria,                  -- Seleciona o tipo de mercadoria da semana atual.
        sa.tempo_medio                                                       AS tempo_medio_semana_atual,          -- Seleciona o tempo m dio de entrega da semana atual.
        sm.tempo_medio                                                       AS tempo_medio_semana_anterior,       -- Seleciona o tempo m dio de entrega da semana anterior.
        round(((sa.tempo_medio - sm.tempo_medio) / sm.tempo_medio) * 100, 2) AS variacao_percentual                 -- Calcula a varia  o percentual entre as m dias de tempo de entrega.
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
    -- Subconsulta que calcula o tempo m dio de entrega para cada tipo de mercadoria e grupo de pedidos.
        SELECT
        -- Utiliza uma express o CASE para categorizar os pedidos em dois grupos (Grupo 1 e Grupo 2) com base no n mero de transportes.
            CASE
                WHEN p."N_TRANSPORTES" = 1 THEN
                    'Grupo 1'
                ELSE
                    'Grupo 2'
            END                                                                                               AS "Grupo_Pedido",
            p.tipomerc_id_tm                                                                                  AS "Tipo_Mercadoria", -- Adiciona a coluna "Tipo_Mercadoria".
        -- Calcula o tempo m dio de entrega em segundos e o converte para a unidade desejada (segundos).
            AVG(EXTRACT(SECOND FROM(CAST(de."DATAHORA" AS TIMESTAMP) - CAST(de_e1."DATAHORA" AS TIMESTAMP)))) AS "tempo_medio_entrega"
        FROM
                 pedido p                                      -- Tabela de pedidos, com o alias P.
            JOIN data_estado de ON p."ID_PEDIDO" = de."PEDIDO_ID_PEDIDO"           -- Junta a tabela PEDIDO com a tabela DATA_ESTADO pelo ID_PEDIDO.
            JOIN estado      e5 ON de."ESTADO_ID_ESTADO" = e5."ID_ESTADO"            -- Junta a tabela DATA_ESTADO com a tabela ESTADO (estado final) pelo ESTADO_ID_ESTADO.
                              AND e5."DESCRICAO" = 'E5'                               -- Filtra os registos onde o estado   'E5' (finalizado).
            JOIN data_estado de_e1 ON p."ID_PEDIDO" = de_e1."PEDIDO_ID_PEDIDO"      -- Junta a tabela PEDIDO com a tabela DATA_ESTADO (estado inicial) pelo ID_PEDIDO.
            JOIN estado      e1 ON de_e1."ESTADO_ID_ESTADO" = e1."ID_ESTADO"         -- Junta a tabela DATA_ESTADO com a tabela ESTADO (estado inicial) pelo ESTADO_ID_ESTADO.
                              AND e1."DESCRICAO" = 'E1'                               -- Filtra os registos onde o estado   'E1' (inicial).
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
-- Consulta principal que calcula a diferen a de tempo m dio de entrega entre os grupos de pedidos para cada tipo de mercadoria.
    SELECT
        "Tipo_Mercadoria",                                                         -- Seleciona o tipo de mercadoria.
        round(MAX(
            CASE
                WHEN "Grupo_Pedido" = 'Grupo 1' THEN                               -- Se o grupo de pedido for 'Grupo 1', seleciona o tempo m dio de entrega.
                    "tempo_medio_entrega"
                ELSE
                    0
            END
        ) - MAX(
            CASE
                WHEN "Grupo_Pedido" = 'Grupo 2' THEN                               -- Se o grupo de pedido for 'Grupo 2', seleciona o tempo m dio de entrega.
                    "tempo_medio_entrega"
                ELSE
                    0
            END
        ),
              2) AS "DIF_TEMPOS"                                                     -- Calcula a diferen a entre os tempos m dios de entrega e arredonda para duas casas decimais.
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

    -- Conta o n mero de pedidos para cada cliente, usando a tabela CLIENTE_PEDIDO e atribuindo um alias
        COUNT(cp.pedido_id_pedido) AS num_pedidos
    FROM
        cliente        c,  -- Define a tabela CLIENTE e atribui um alias 'c'
        cliente_pedido cp  -- Define a tabela CLIENTE_PEDIDO e atribui um alias 'CP'

-- Estabelece a condi  o de jun  o entre as tabelas CLIENTE e CLIENTE_PEDIDO
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
    COUNT(DISTINCT viagem.id_viagem) AS num_viagens, -- Conta o n mero de viagens distintas e renomeia como 'num_viagens'.
    COUNT(pedido.id_pedido) AS num_pedidos -- Conta o n mero de pedidos da tabela 'pedido' e renomeia como 'num_pedidos'.
FROM
    troco
    LEFT JOIN viagem ON troco.id_troco = viagem.troco_id_troco -- Faz um LEFT JOIN com a tabela 'viagem' relacionando os trocos com as viagens atrav s dos IDs de troco.
    LEFT JOIN pedido_viagem ON viagem.id_viagem = pedido_viagem.viagem_id_viagem -- Faz um LEFT JOIN com a tabela 'pedido_viagem' relacionando as viagens com os pedidos atrav s dos IDs de viagem.
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
    COUNT(DISTINCT VM.MOTORISTA_ID_MOTORISTA) AS "NUMERO_DE_MOTORISTAS" -- Conta o n mero de motoristas distintos para cada troco
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
        WHERE P.TIPOMERC_ID_TM = TM.ID_TM -- Condi  o para garantir que apenas os pedidos do tipo de mercadoria atual sejam considerados.
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

    -- Seleciona o n mero de viagens associadas a cada rota usando uma subconsulta
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
        -- Subconsulta para calcular a m dia da carga dos ve culos
        SELECT AVG(V.PESO_OCUPADO)
        FROM VIAGEM_VEICULO VV, VEICULO V, VIAGEM VIA, VIAGEM_VEICULO VR, VIAGEM_ROTA VRO
        WHERE 
                --JOINS
            VIA.ID_VIAGEM = VR.VIAGEM_ID_VIAGEM
            AND VR.VIAGEM_ID_VIAGEM = VRO.VIAGEM_ID_VIAGEM
            AND VRO.ROTA_ID_ROTA = R.ID_ROTA
            AND VV.VEICULO_ID_VEICULO = V.ID_VEICULO
    ) AS MEDIA_CARGA -- Alias para o resultado da m dia de carga
FROM ROTA R
;
--------------------------------------------------------
--  DDL for View VIEW_N2_2022113359
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AABDG23"."VIEW_N2_2022113359" ("ID_ARMAZEM", "PEDIDOS_A_CHEGAR", "PEDIDOS_A_SAIR") AS 
  SELECT 
    A.ID_ARMAZEM, -- Seleciona o ID do armaz m
    -- Subconsulta para obter os detalhes dos pedidos a chegar na pr xima hora
    (
        SELECT 
            P.ID_PEDIDO -- Seleciona o ID do pedido
        FROM 
            VIAGEM_ARMAZEM_RECOLHA VAR -- Tabela de viagem para armaz m de recolha
            JOIN VIAGEM V ON VAR.ID_VIAGEM = V.ID_VIAGEM -- Junta a tabela de viagem
            JOIN PEDIDO_VIAGEM PV ON V.ID_VIAGEM = PV.VIAGEM_ID_VIAGEM -- Junta a tabela de pedido de viagem
            JOIN PEDIDO P ON P.ID_PEDIDO = PV.PEDIDO_ID_PEDIDO -- Junta a tabela de pedido
        WHERE 
            VAR.ID_ARMAZEM_RECOLHA = A.ID_ARMAZEM -- Filtro pelo ID do armaz m
            AND V.DHPREVINICIO BETWEEN SYSDATE AND SYSDATE + INTERVAL '1' HOUR -- Filtro pela pr xima hora
    ) AS Pedidos_a_Chegar, -- Nomeia a subconsulta como Pedidos_a_Chegar
    -- Subconsulta para obter os detalhes dos pedidos a sair na pr xima hora
    (
        SELECT 
            P.ID_PEDIDO -- Seleciona o ID do pedido
        FROM 
            VIAGEM_ARMAZEM_ENTREGA VAE -- Tabela de viagem para armaz m de entrega
            JOIN VIAGEM V ON VAE.ID_VIAGEM = V.ID_VIAGEM -- Junta a tabela de viagem
            JOIN PEDIDO_VIAGEM PV ON V.ID_VIAGEM = PV.VIAGEM_ID_VIAGEM -- Junta a tabela de pedido de viagem
            JOIN PEDIDO P ON P.ID_PEDIDO = PV.PEDIDO_ID_PEDIDO -- Junta a tabela de pedido
        WHERE 
            VAE.ID_ARMAZEM_ENTREGA = A.ID_ARMAZEM -- Filtro pelo ID do armaz m
            AND V.DHPREVINICIO BETWEEN SYSDATE AND SYSDATE + INTERVAL '1' HOUR -- Filtro pela pr xima hora
    ) AS Pedidos_a_Sair -- Nomeia a subconsulta como Pedidos_a_Sair
FROM 
    ARMAZEM A -- Seleciona da tabela de armaz m
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
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM11','R.Santa Catarina,Porto','4000-012','100','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM12','R.Do Buraco,Leiria','2400-016','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM01','R.Teixeira Guedes,Santarem','2000-029','100','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM14','R.Alexandre Herculano,Viseu','3510-034','10000','10000');
Insert into AABDG23.ARMAZEM (ID_ARMAZEM,MORADA,COD_POSTAL,CAPDISPONIVEL,CAPMAXIMA) values ('ARM15','R.Gomes Castilho,Vila Real','5000-446','10000','10000');
REM INSERTING into AABDG23.CLIENTE
SET DEFINE OFF;
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI1','123456780','Manuel Fernandes','Rua da Liberdade 1,Porto','912345678','manuel.fernandes@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI2','987654322','Ana Santos','Avenida Central 20,Viseu','923456789','ana.santos@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI3','456789124','Jo o Oliveira','Pra a da Rep blica 15,Beja','934567890','joao.oliveira@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI4','111222334','Sofia Silva','Travessa dos Cedros 5,Lisboa','945678901','sofia.silva@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI5','444555667','Rui Pereira','Rua dos L rios 6,Guarda','956789012','rui.pereira@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI6','777888990','Catarina Gon alves','Avenida dos Pinheiros 12,Castelo Branco','967890123','catarina.goncalves@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI7','000111223','Miguel Almeida','Rua das Rosas 25,Evora','978901234','miguel.almeida@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI8','333444556','In s Rodrigues','Pra a dos Girass is 8,Santarem','989012345','ines.rodrigues@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI9','666777889','Carla Costa','Travessa das Oliveiras 10,Coimbra','900123456','carla.costa@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI10','999000112','Paulo Martins','Avenida dos Coqueiros 50,Braga','911234567','paulo.martins@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI11','222333445','Diana Sousa','Rua dos Cravos 18,Aveiro','922345678','diana.sousa@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI12','555666778','Ricardo Ferreira','Pra a das Az leas 7,Lisboa','933456789','ricardo.ferreira@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI13','888999001','Isabel Ramos','Avenida das Amendoeiras 22,Bragan a','944567890','isabel.ramos@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI14','111222335','Gustavo Moreira','Travessa das Violetas 11,Leiria','955678901','gustavo.moreira@example.com');
Insert into AABDG23.CLIENTE (ID_CLIENTE,NIF,NOME,MORADA,TELEFONE,EMAIL) values ('CLI15','444555668','L cia Silva','Rua das Hort nsias 40,Vila Real','966789012','lucia.silva@example.com');
REM INSERTING into AABDG23.CLIENTE_PEDIDO
SET DEFINE OFF;
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
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E2','Em armaz m');
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E3','Em tr nsito');
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E4','A aguardar entrega');
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E5','Entregue');
Insert into AABDG23.ESTADO (ID_ESTADO,DESCRICAO) values ('E6','Devolvido');
REM INSERTING into AABDG23.MOTORISTA
SET DEFINE OFF;
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE) values ('M01','Pedro Alves','232120854','80360550	','46738410','404037482','1250','R.da Paz,Coimbra,3025-101','932564879');
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE) values ('M02','Paulo Mariano','249681161','48289878','86417001','411544126','2000','AV.Jose Bonifacio Andrada,Coimbra,3030-403','912548369');
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE) values ('M03','Joao Costa','254644457','48763865','26299500','948309359','1400','Rua Lu s A. Duarte Santos,Coimbra,3030-403','915876324');
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE) values ('M04','Francisco Pereira','158890876','55963392	','28085291','949529800','1260','R.Dos Pescadores,Figueira da Foz,3080-260','965892710');
Insert into AABDG23.MOTORISTA (ID_MOTORISTA,NOME,NIF,N_SS,N_CC,N_SNS,SALARIO,MORADA,TELEFONE) values ('M05','Francisco Duarte','128981563','21672366','12578816','426888338','1300','Rua Gualdim Paes,Pombal,3100-312','915698480');
REM INSERTING into AABDG23.PEDIDO
SET DEFINE OFF;
Insert into AABDG23.PEDIDO (ID_PEDIDO,D_H_R,REMETENTE,DESTINATARIO,PESO,VOLUME,CUSTO,TIPOMERC_ID_TM,PRIORIDADE,TEMP_PREV,N_TRANSPORTES) values ('2023041106',to_date('24.02.05','RR.MM.DD'),'CLI12','R.Santa Catarina,Porto-Normal','5','1','1200','TM01','2','48',null);
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
Insert into AABDG23.PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO,VIAGEM_ID_VIAGEM) values ('2023041105','1');
Insert into AABDG23.PEDIDO_VIAGEM (PEDIDO_ID_PEDIDO,VIAGEM_ID_VIAGEM) values ('2023041106','1');
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
REM INSERTING into AABDG23.TIPOMERC
SET DEFINE OFF;
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM01','Regular');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM02','Fragil');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM03','Explosiva');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM04','Inflamavel');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM05',' cidos');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM06','Comburente');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM07','Animais Vivos');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM08','Materiais Refrigerados');
Insert into AABDG23.TIPOMERC (ID_TM,DESCRICAO) values ('TM09','Grande Eletrodom stico');
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
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V01','DD6677','2017','SCANIA','0','CAMIAO','SERIE L
','26000','76',null,'10000');
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V02','GG3489','2015','SCANIA','1','CAMIAO','SERIE L','26000','76',null,null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V03','FF5981','2020','SCANIA','1','CAMIAO','SERIE L','52000','152',null,null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V04','RF9085','2020','SCANIA','0','CAMIAO','SERIE L','26000','76',null,null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V05','FR1236','2018','SCANIA','1','CAMIAO','SERIE L','26000','76',null,null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V06','PT1290','2021','SCANIA','0','CAMIAO','SERIE L','26000','76',null,null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V07','PG1303','2015','MERCEDES','0','FURGAO','VITO','3000','7',null,null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V08','PG0450','2016','MERCEDES','0','FURGAO','VITO','3000','7',null,null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V09','TP0305','2016','MERCEDES','0','FURGAO','VITO','3000','7',null,null);
Insert into AABDG23.VEICULO (ID_VEICULO,MATRICULA,ANO,MARCA,ESPECIAL,TIPO,MODELO,PESOMERCMAX,VOLMERCMAX,VOL_OCUPADO,PESO_OCUPADO) values ('V10','TP5679','2018','MERCEDES','1','FURGAO','VITO','3000','7',null,null);
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
REM INSERTING into AABDG23.VEICULO_TIPOMERC
SET DEFINE OFF;
Insert into AABDG23.VEICULO_TIPOMERC (VEICULO_ID_VEICULO,TIPOMERC_ID_TM) values ('V02','TM07');
REM INSERTING into AABDG23.VIAGEM
SET DEFINE OFF;
Insert into AABDG23.VIAGEM (ID_VIAGEM,DISTANCIA,DHPARTIDA,NPEDIDOS,VOLOCUPADO,DHPREVINICIO,DHPREVFIM,ARMAZEM_ID_ARMAZEM,ARMAZEM_ID_ARMAZEM1,TROCO_ID_TROCO) values ('1','300',to_date('24.02.07','RR.MM.DD'),'2','12',to_date('24.02.07','RR.MM.DD'),to_date('24.02.07','RR.MM.DD'),'ARM10','ARM11','TR01');
REM INSERTING into AABDG23.VIAGEM_ARMAZEM_ENTREGA
SET DEFINE OFF;
Insert into AABDG23.VIAGEM_ARMAZEM_ENTREGA (ID_VIAGEM,ID_ARMAZEM_ENTREGA) values ('1','ARM11');
REM INSERTING into AABDG23.VIAGEM_ARMAZEM_RECOLHA
SET DEFINE OFF;
Insert into AABDG23.VIAGEM_ARMAZEM_RECOLHA (ID_VIAGEM,ID_ARMAZEM_RECOLHA) values ('1','ARM10');
REM INSERTING into AABDG23.VIAGEM_MOTORISTA
SET DEFINE OFF;
Insert into AABDG23.VIAGEM_MOTORISTA (VIAGEM_ID_VIAGEM,MOTORISTA_ID_MOTORISTA) values ('1','M01');
REM INSERTING into AABDG23.VIAGEM_ROTA
SET DEFINE OFF;
Insert into AABDG23.VIAGEM_ROTA (VIAGEM_ID_VIAGEM,ROTA_ID_ROTA) values ('1','R01');
REM INSERTING into AABDG23.VIAGEM_VEICULO
SET DEFINE OFF;
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
