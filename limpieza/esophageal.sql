-- Descripción de la tabla. 
SELECT column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'esophageal';

-- La tabla tiene 349 registros.
SELECT count(*)
FROM esophageal e;

-- Construcción de vista con datos limpios.
-- Cambios:
-- · Se añade la columna id_esophageal que fungirá como llave primaria.
-- · Se cambio la definición de algunas columnas pues guardaban binarios como 1 y 2.
-- · Se elimina el campo education pues no es relevante.
-- · Se elimina el campo mstatus pues no es relevante. Estatus marital.
-- · Se elimina el campo khat pues no se encontró su significado.
-- · Se elimina el campo comorbidity pues tiene registros nulos (37)
-- · Se elimina el campo duration_all pues no se encontró su significado.
-- · Se elimina el campo hist_type pues no se encontró su significado.
-- · Se elimina el campo lesion_loc pues tiene registros nulos (5) 
--
-- Notas:
-- · diff_swallowing es dificultad para tragar.
-- · heart_burn es acidez
-- · ba_swallow se refiere a un estudio donde se le pide al paciente tomar bario.
-- · ct_scan indica si se le hizo una tomografía.
-- · cxr es chest xray
-- · us es ultrasonido
-- · hist_grade es el grado histológico.
-- · adj_organ adjacent organ involved
-- · tnm_stage = 0 significa "Desconocido.
-- · t_hital_eso Transhiatal esophagectomy 
-- · t_thoracic_eso Transthoracic esophagectomy
-- · 1 murió / 0 vivió
CREATE VIEW esophageal_clean AS
(SELECT row_number() over() id_esophageal, region, age, sex - 1 sex, alcohol - 1 alcohol, tobacco - 1 tobacco, 
family_history - 1 family_history, diff_swallowing - 1 diff_swallowing, pain_swallowing - 1 pain_swallowing, 
weight_loss - 1 weight_loss, vomiting - 1 vomiting, heart_burn - 1 heart_burn, cough - 1 cough, 
chest_pain - 1 chest_pain, ba_swallow - 1 ba_swallow, endoscopy - 1 endoscopy, ct_scan - 1 ct_scan, biopsy - 1 biopsy,
cxr - 1 cxr, us - 1 us, hist_grade, dist_metas, adj_organ,
(CASE WHEN tnm_stage = ' ' THEN 0 ELSE tnm_stage :: INT END) tnm_stage, surgery, t_hital_eso -1 t_hital_eso, 
t_thoracic_eso - 1 t_thoracic_eso, chemotherapy, radiotherapy, hospital_stay, status_patient - 1 status_patient,
khat - 1 khat 
FROM esophageal e);