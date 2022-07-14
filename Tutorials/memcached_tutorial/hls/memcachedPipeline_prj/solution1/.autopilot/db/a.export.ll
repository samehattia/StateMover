; ModuleID = '/home/sameh/Dropbox/UofT/Research/Work/Designs/debugging/memcached/hls/memcachedPipeline_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@llvm_global_ctors_0 = appending global [14 x i32] [i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [14 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a34, void ()* @_GLOBAL__I_a61, void ()* @_GLOBAL__I_a87, void ()* @_GLOBAL__I_a124, void ()* @_GLOBAL__I_a161, void ()* @_GLOBAL__I_a189, void ()* @_GLOBAL__I_a218, void ()* @_GLOBAL__I_a243, void ()* @_GLOBAL__I_a268, void ()* @_GLOBAL__I_a305, void ()* @_GLOBAL__I_a333, void ()* @_GLOBAL__I_a360, void ()* @_GLOBAL__I_a387]
@p_str11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@is_validFlag = internal unnamed_addr global i1 false, align 1
@dramOrFlash_V = internal unnamed_addr global i1 false
@p_str37 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mergerState = internal unnamed_addr global i1 false, align 1
@dramOrFlash_V_1 = internal unnamed_addr global i1 false
@p_str90 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str191 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@flashDemuxState = internal unnamed_addr global i2 0, align 1
@flashDemuxValueLength_V = internal unnamed_addr global i16 0
@flashWordCounter_V = internal unnamed_addr global i2 0
@flashRemuxState = internal unnamed_addr global i3 0, align 1
@flashRmMdBuffer_metadata_V = internal unnamed_addr global i124 0
@flashRmKeyLength = internal unnamed_addr global i8 0, align 1
@flashRmValueLength = internal unnamed_addr global i16 0, align 2
@flashSetState = internal unnamed_addr global i1 false, align 1
@flashGetState = internal unnamed_addr global i1 false, align 1
@getValueLength_V = internal unnamed_addr global i16 0
@getCounter = internal unnamed_addr global i8 0, align 1
@flash_Disp2rec_V_V = internal global i16 0
@flashGetPath2remux_V_V = internal global i64 0
@flashKeyBuffer_V_V = internal global i64 0
@p_str127 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@accState = internal unnamed_addr global i3 0, align 1
@accessCtrl_wrPtr = internal unnamed_addr global i8 0
@accessCtrl_rdPtr = internal unnamed_addr global i8 0
@accessCtrl_level = internal unnamed_addr global i8 0
@inputWord_metadata_V = internal unnamed_addr global i124 0
@inputWord_SOP_V = internal unnamed_addr global i1 false
@inputWord_keyValid_V = internal unnamed_addr global i1 false
@inputWord_valueValid_V = internal unnamed_addr global i1 false
@inputWord_EOP_V = internal unnamed_addr global i1 false
@inputWord_value_V = internal unnamed_addr global i64 0
@inputWord_key_V = internal unnamed_addr global i64 0
@pushWord_address_V = internal unnamed_addr global i32 0
@pushWord_operation_V = internal unnamed_addr global i8 0
@filterSeq_V_V = internal global i2 0
@streamToPop_V = internal unnamed_addr global i2 -2
@demuxState = internal unnamed_addr global i2 0, align 1
@valueLength_V = internal unnamed_addr global i16 0
@wordCounter_V = internal unnamed_addr global i2 0
@setMdBuffer_address_V = internal unnamed_addr global i32 0
@setValueBuffer_V = internal unnamed_addr global i512 0
@counter = internal unnamed_addr global i8 0, align 1
@setNumOfWords = internal unnamed_addr global i8 0, align 1
@setState = internal unnamed_addr global i3 0, align 1
@getState = internal unnamed_addr global i1 false, align 1
@memInputWord_V = internal unnamed_addr global i512 0
@getValueLength_V_1 = internal unnamed_addr global i12 0
@getCounter_1 = internal unnamed_addr global i8 0, align 1
@disp2rec_V_V = internal global i12 0
@remuxState = internal unnamed_addr global i3 0, align 1
@rmMdBuffer_metadata_V = internal unnamed_addr global i124 0
@rmKeyLength = internal unnamed_addr global i8 0, align 1
@rmValueLength = internal unnamed_addr global i16 0, align 2
@getPath2remux_V_V = internal global i64 0
@keyBuffer_V_V = internal global i64 0
@filterPopSet_V_V = internal global i1 false
@filterPopGet_V_V = internal global i1 false
@p_str164 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@inWordCounter_V = internal unnamed_addr global i2 0
@bf_metadataTempBuffer_V = internal unnamed_addr global i248 0
@valueLength = internal unnamed_addr global i16 0, align 2
@outOpCode = internal unnamed_addr global i8 0, align 1
@errorCode = internal unnamed_addr global i8 0, align 1
@resp_ValueConvertTemp_V = internal unnamed_addr global i32 0
@outMetadataTempBuffer_V = internal unnamed_addr global i248 0
@xtrasBuffer_V = internal unnamed_addr global i64 0
@metadataBuffer_rf_V_V = internal global i248 0
@valueBuffer_rf_V_V = internal global i64 0
@p_str192 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@valueShift = internal unnamed_addr global i8 0, align 1
@bpf_keyLength_V = internal unnamed_addr global i8 0
@bpf_opCode_V = internal unnamed_addr global i8 0
@protocol_V = internal unnamed_addr global i4 0
@valueTempBuffer_V = internal unnamed_addr global i64 0
@keyLengthBuffer = internal unnamed_addr global i8 0, align 1
@bpf_valueLengthBuffer_V = internal unnamed_addr global i17 0
@lastValueWord = internal unnamed_addr global i1 false, align 1
@metadataTempBuffer_V = internal unnamed_addr global i248 0
@outMetadataBuffer_V = internal unnamed_addr global i248 0
@bpr_keyLength = internal unnamed_addr global i8 0, align 1
@bpr_valueLength = internal unnamed_addr global i16 0, align 2
@bpr_opCode = internal unnamed_addr global i8 0, align 1
@binaryParserRearState = internal unnamed_addr global i2 0, align 1
@metadataBuffer_rp_V_V = internal global i248 0
@keyBuffer_rp_V_V = internal global i64 0
@valueBuffer_rp_V_V = internal global i64 0
@p_str221 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@htMemWriteInputStatusWord_bin_s = internal unnamed_addr global i1 false
@htMemWriteInputStatusWord_bin_1 = internal unnamed_addr global i1 false
@htMemWriteInputStatusWord_bin_2 = internal unnamed_addr global i1 false
@htMemWriteInputStatusWord_bin_3 = internal unnamed_addr global i1 false
@htMemWriteInputStatusWord_bin_4 = internal unnamed_addr global i1 false
@htMemWriteInputStatusWord_bin_5 = internal unnamed_addr global i1 false
@htMemWriteInputStatusWord_bin_6 = internal unnamed_addr global i1 false
@htMemWriteInputStatusWord_bin_7 = internal unnamed_addr global i1 false
@htMemWriteInputWordMd_operatio = internal unnamed_addr global i8 0
@htMemWriteInputWordMd_metadata = internal unnamed_addr global i32 0
@htMemWriteInputWordMd_keyLengt = internal unnamed_addr global i8 0
@htMemWriteInputWordMd_valueLen = internal unnamed_addr global i16 0
@memWriteAddress_V = internal unnamed_addr global i10 0
@memWrState = internal unnamed_addr global i3 0, align 1
@memWr_flushReq_V = internal unnamed_addr global i1 false
@memWr_flushDone_V = internal unnamed_addr global i1 false
@memWr_memInitialized = internal unnamed_addr global i1 false, align 1
@p_str246 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@memRdState = internal unnamed_addr global i1 false, align 1
@p_str271 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1272 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bufferWord_data_V = internal unnamed_addr global i128 0
@bufferWordMd_operation_V = internal unnamed_addr global i8 0
@bufferWordMd_keyLength_V = internal unnamed_addr global i8 0
@bufferWordMd_valueLength_V = internal unnamed_addr global i16 0
@iState = internal unnamed_addr global i1 false, align 1
@wordCounter_V_1 = internal unnamed_addr global i2 0
@keyWordCounter_V = internal unnamed_addr global i2 0
@keyLength_V = internal unnamed_addr global i8 0
@olState = internal unnamed_addr global i2 0, align 1
@ol_keyLength_V = internal unnamed_addr global i8 0
@ol_valueLength_V = internal unnamed_addr global i16 0
@hashKeyBuffer_V_V = internal global i64 0
@hashValueBuffer_V_V = internal global i64 0
@hashMdBuffer_V_V = internal global i128 0
@in2hashKeyLength_V_V = internal global i8 0
@hash2cc_V_V = internal global i32 0
@comp2memWrMemData_V_V = internal global i512 0
@dec2cc_V_V = internal global i1 false
@p_str308 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1309 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@hashState = internal unnamed_addr global i4 0, align 1
@a = internal unnamed_addr global i32 0, align 4
@b = internal unnamed_addr global i32 0, align 4
@c = internal unnamed_addr global i32 0, align 4
@length_r = internal unnamed_addr global i64 0, align 8
@keyResizerState = internal unnamed_addr global i3 0, align 1
@keyResizerLength_V = internal unnamed_addr global i8 0
@resizedKeyOutput_V = internal unnamed_addr global i96 0
@tempInput_data_V = internal unnamed_addr global i128 0
@resizedKey_V_V = internal global i96 0
@resizedKeyLength_V = internal global i32 0
@resizedInitValue_V = internal global i32 0
@p_str336 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cmpState = internal unnamed_addr global i2 0, align 1
@cmp_keyLength = internal unnamed_addr global i8 0, align 1
@cmp_inDataMd_operation_V = internal unnamed_addr global i8 0
@cmp_inDataMd_metadata_V = internal unnamed_addr global i32 0
@cmp_inDataMd_keyLength_V = internal unnamed_addr global i8 0
@cmp_inDataMd_valueLength_V = internal unnamed_addr global i16 0
@statusOutput_bin_free_V_0 = internal unnamed_addr global i1 false
@statusOutput_bin_free_V_1 = internal unnamed_addr global i1 false
@statusOutput_bin_free_V_2 = internal unnamed_addr global i1 false
@statusOutput_bin_free_V_3 = internal unnamed_addr global i1 false
@statusOutput_bin_match_V_0 = internal unnamed_addr global i1 false
@statusOutput_bin_match_V_1 = internal unnamed_addr global i1 false
@statusOutput_bin_match_V_2 = internal unnamed_addr global i1 false
@statusOutput_bin_match_V_3 = internal unnamed_addr global i1 false
@p_str363 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hashFilter_wrPtr = internal unnamed_addr global i8 0
@hashFilter_rdPtr = internal unnamed_addr global i8 0
@hashFilter_level = internal unnamed_addr global i8 0
@ccState = internal unnamed_addr global i3 0, align 1
@ccInputWord_data_V = internal unnamed_addr global i128 0
@ccInputWord_SOP_V = internal unnamed_addr global i1 false
@ccInputWord_EOP_V = internal unnamed_addr global i1 false
@ccInputWordMd_operation_V = internal unnamed_addr global i8 0
@ccInputWordMd_metadata_V = internal unnamed_addr global i32 0
@ccInputWordMd_keyLength_V = internal unnamed_addr global i8 0
@ccInputWordMd_valueLength_V = internal unnamed_addr global i16 0
@ccCompareElement_address_V = internal unnamed_addr global i6 0
@ccCompareElement_operation_V = internal unnamed_addr global i8 0
@str = internal constant [18 x i8] c"memcachedPipeline\00"
@str1178 = internal constant [8 x i8] c"ap_fifo\00"
@str1179 = internal constant [1 x i8] zeroinitializer
@str1182 = internal constant [8 x i8] c"ap_fifo\00"
@str1183 = internal constant [1 x i8] zeroinitializer
@str1186 = internal constant [8 x i8] c"ap_fifo\00"
@str1187 = internal constant [1 x i8] zeroinitializer
@str1190 = internal constant [8 x i8] c"ap_fifo\00"
@str1191 = internal constant [1 x i8] zeroinitializer
@str1194 = internal constant [8 x i8] c"ap_fifo\00"
@str1195 = internal constant [1 x i8] zeroinitializer
@str1198 = internal constant [8 x i8] c"ap_fifo\00"
@str1199 = internal constant [1 x i8] zeroinitializer
@str1200 = internal constant [32 x i8] c"requestParser2hashTable.V.key.V\00"
@str1201 = internal constant [1 x i8] zeroinitializer
@str1202 = internal constant [8 x i8] c"ap_fifo\00"
@str1203 = internal constant [1 x i8] zeroinitializer
@str1206 = internal constant [8 x i8] c"ap_fifo\00"
@str1207 = internal constant [1 x i8] zeroinitializer
@str1210 = internal constant [8 x i8] c"ap_fifo\00"
@str1211 = internal constant [1 x i8] zeroinitializer
@str1214 = internal constant [8 x i8] c"ap_fifo\00"
@str1215 = internal constant [1 x i8] zeroinitializer
@str1218 = internal constant [8 x i8] c"ap_fifo\00"
@str1219 = internal constant [1 x i8] zeroinitializer
@str1222 = internal constant [8 x i8] c"ap_fifo\00"
@str1223 = internal constant [1 x i8] zeroinitializer
@str1226 = internal constant [8 x i8] c"ap_fifo\00"
@str1227 = internal constant [1 x i8] zeroinitializer
@str1228 = internal constant [27 x i8] c"hashTable2splitter.V.key.V\00"
@str1229 = internal constant [1 x i8] zeroinitializer
@str1230 = internal constant [8 x i8] c"ap_fifo\00"
@str1231 = internal constant [1 x i8] zeroinitializer
@str1234 = internal constant [8 x i8] c"ap_fifo\00"
@str1235 = internal constant [1 x i8] zeroinitializer
@str1238 = internal constant [8 x i8] c"ap_fifo\00"
@str1239 = internal constant [1 x i8] zeroinitializer
@str1242 = internal constant [8 x i8] c"ap_fifo\00"
@str1243 = internal constant [1 x i8] zeroinitializer
@str1246 = internal constant [8 x i8] c"ap_fifo\00"
@str1247 = internal constant [1 x i8] zeroinitializer
@str1250 = internal constant [8 x i8] c"ap_fifo\00"
@str1251 = internal constant [1 x i8] zeroinitializer
@str1254 = internal constant [8 x i8] c"ap_fifo\00"
@str1255 = internal constant [1 x i8] zeroinitializer
@str1256 = internal constant [33 x i8] c"merger2responseFormatter.V.key.V\00"
@str1257 = internal constant [1 x i8] zeroinitializer
@str1258 = internal constant [8 x i8] c"ap_fifo\00"
@str1259 = internal constant [1 x i8] zeroinitializer
@str1262 = internal constant [8 x i8] c"ap_fifo\00"
@str1263 = internal constant [1 x i8] zeroinitializer
@str1266 = internal constant [8 x i8] c"ap_fifo\00"
@str1267 = internal constant [1 x i8] zeroinitializer
@str1270 = internal constant [8 x i8] c"ap_fifo\00"
@str1271 = internal constant [1 x i8] zeroinitializer
@str1274 = internal constant [8 x i8] c"ap_fifo\00"
@str1275 = internal constant [1 x i8] zeroinitializer
@str1278 = internal constant [8 x i8] c"ap_fifo\00"
@str1279 = internal constant [1 x i8] zeroinitializer
@str1282 = internal constant [8 x i8] c"ap_fifo\00"
@str1283 = internal constant [1 x i8] zeroinitializer
@str1284 = internal constant [33 x i8] c"splitter2valueStoreFlash.V.key.V\00"
@str1285 = internal constant [1 x i8] zeroinitializer
@str1286 = internal constant [8 x i8] c"ap_fifo\00"
@str1287 = internal constant [1 x i8] zeroinitializer
@str1290 = internal constant [8 x i8] c"ap_fifo\00"
@str1291 = internal constant [1 x i8] zeroinitializer
@str1294 = internal constant [8 x i8] c"ap_fifo\00"
@str1295 = internal constant [1 x i8] zeroinitializer
@str1298 = internal constant [8 x i8] c"ap_fifo\00"
@str1299 = internal constant [1 x i8] zeroinitializer
@str1302 = internal constant [8 x i8] c"ap_fifo\00"
@str1303 = internal constant [1 x i8] zeroinitializer
@str1306 = internal constant [8 x i8] c"ap_fifo\00"
@str1307 = internal constant [1 x i8] zeroinitializer
@str1310 = internal constant [8 x i8] c"ap_fifo\00"
@str1311 = internal constant [1 x i8] zeroinitializer
@str1312 = internal constant [32 x i8] c"splitter2valueStoreDram.V.key.V\00"
@str1313 = internal constant [1 x i8] zeroinitializer
@str1314 = internal constant [8 x i8] c"ap_fifo\00"
@str1315 = internal constant [1 x i8] zeroinitializer
@str1318 = internal constant [8 x i8] c"ap_fifo\00"
@str1319 = internal constant [1 x i8] zeroinitializer
@str1322 = internal constant [8 x i8] c"ap_fifo\00"
@str1323 = internal constant [1 x i8] zeroinitializer
@str1326 = internal constant [8 x i8] c"ap_fifo\00"
@str1327 = internal constant [1 x i8] zeroinitializer
@str1330 = internal constant [8 x i8] c"ap_fifo\00"
@str1331 = internal constant [1 x i8] zeroinitializer
@str1334 = internal constant [8 x i8] c"ap_fifo\00"
@str1335 = internal constant [1 x i8] zeroinitializer
@str1338 = internal constant [8 x i8] c"ap_fifo\00"
@str1339 = internal constant [1 x i8] zeroinitializer
@str1340 = internal constant [31 x i8] c"valueStoreFlash2merger.V.key.V\00"
@str1341 = internal constant [1 x i8] zeroinitializer
@str1342 = internal constant [8 x i8] c"ap_fifo\00"
@str1343 = internal constant [1 x i8] zeroinitializer
@str1346 = internal constant [8 x i8] c"ap_fifo\00"
@str1347 = internal constant [1 x i8] zeroinitializer
@str1350 = internal constant [8 x i8] c"ap_fifo\00"
@str1351 = internal constant [1 x i8] zeroinitializer
@str1354 = internal constant [8 x i8] c"ap_fifo\00"
@str1355 = internal constant [1 x i8] zeroinitializer
@str1358 = internal constant [8 x i8] c"ap_fifo\00"
@str1359 = internal constant [1 x i8] zeroinitializer
@str1362 = internal constant [8 x i8] c"ap_fifo\00"
@str1363 = internal constant [1 x i8] zeroinitializer
@str1366 = internal constant [8 x i8] c"ap_fifo\00"
@str1367 = internal constant [1 x i8] zeroinitializer
@str1368 = internal constant [30 x i8] c"valueStoreDram2merger.V.key.V\00"
@str1369 = internal constant [1 x i8] zeroinitializer
@str1370 = internal constant [8 x i8] c"ap_fifo\00"
@str1371 = internal constant [1 x i8] zeroinitializer
@str1372 = internal constant [19 x i8] c"flash_Disp2rec.V.V\00"
@str1373 = internal constant [1 x i8] zeroinitializer
@str1374 = internal constant [8 x i8] c"ap_fifo\00"
@str1375 = internal constant [1 x i8] zeroinitializer
@str1378 = internal constant [8 x i8] c"ap_fifo\00"
@str1379 = internal constant [1 x i8] zeroinitializer
@str1382 = internal constant [8 x i8] c"ap_fifo\00"
@str1383 = internal constant [1 x i8] zeroinitializer
@str1384 = internal constant [32 x i8] c"flashDemux2setPathValue.V.EOP.V\00"
@str1385 = internal constant [1 x i8] zeroinitializer
@str1386 = internal constant [8 x i8] c"ap_fifo\00"
@str1387 = internal constant [1 x i8] zeroinitializer
@str1388 = internal constant [23 x i8] c"flashGetPath2remux.V.V\00"
@str1389 = internal constant [1 x i8] zeroinitializer
@str1390 = internal constant [8 x i8] c"ap_fifo\00"
@str1391 = internal constant [1 x i8] zeroinitializer
@str1394 = internal constant [8 x i8] c"ap_fifo\00"
@str1395 = internal constant [1 x i8] zeroinitializer
@str1396 = internal constant [38 x i8] c"flashDemux2setPathMetadata.V.length.V\00"
@str1397 = internal constant [1 x i8] zeroinitializer
@str1398 = internal constant [8 x i8] c"ap_fifo\00"
@str1399 = internal constant [1 x i8] zeroinitializer
@str1402 = internal constant [8 x i8] c"ap_fifo\00"
@str1403 = internal constant [1 x i8] zeroinitializer
@str1404 = internal constant [30 x i8] c"flashDemux2getPath.V.length.V\00"
@str1405 = internal constant [1 x i8] zeroinitializer
@str1406 = internal constant [8 x i8] c"ap_fifo\00"
@str1407 = internal constant [1 x i8] zeroinitializer
@str1410 = internal constant [8 x i8] c"ap_fifo\00"
@str1411 = internal constant [1 x i8] zeroinitializer
@str1414 = internal constant [8 x i8] c"ap_fifo\00"
@str1415 = internal constant [1 x i8] zeroinitializer
@str1418 = internal constant [8 x i8] c"ap_fifo\00"
@str1419 = internal constant [1 x i8] zeroinitializer
@str1422 = internal constant [8 x i8] c"ap_fifo\00"
@str1423 = internal constant [1 x i8] zeroinitializer
@str1424 = internal constant [28 x i8] c"flashMetadataBuffer.V.EOP.V\00"
@str1425 = internal constant [1 x i8] zeroinitializer
@str1426 = internal constant [8 x i8] c"ap_fifo\00"
@str1427 = internal constant [1 x i8] zeroinitializer
@str1428 = internal constant [19 x i8] c"flashKeyBuffer.V.V\00"
@str1429 = internal constant [1 x i8] zeroinitializer
@str1430 = internal constant [8 x i8] c"ap_fifo\00"
@str1431 = internal constant [1 x i8] zeroinitializer
@str1432 = internal constant [14 x i8] c"filterSeq.V.V\00"
@str1433 = internal constant [1 x i8] zeroinitializer
@str1434 = internal constant [8 x i8] c"ap_fifo\00"
@str1435 = internal constant [1 x i8] zeroinitializer
@str1436 = internal constant [13 x i8] c"disp2rec.V.V\00"
@str1437 = internal constant [1 x i8] zeroinitializer
@str1438 = internal constant [8 x i8] c"ap_fifo\00"
@str1439 = internal constant [1 x i8] zeroinitializer
@str1442 = internal constant [8 x i8] c"ap_fifo\00"
@str1443 = internal constant [1 x i8] zeroinitializer
@str1446 = internal constant [8 x i8] c"ap_fifo\00"
@str1447 = internal constant [1 x i8] zeroinitializer
@str1448 = internal constant [27 x i8] c"demux2setPathValue.V.EOP.V\00"
@str1449 = internal constant [1 x i8] zeroinitializer
@str1450 = internal constant [8 x i8] c"ap_fifo\00"
@str1451 = internal constant [1 x i8] zeroinitializer
@str1452 = internal constant [18 x i8] c"getPath2remux.V.V\00"
@str1453 = internal constant [1 x i8] zeroinitializer
@str1454 = internal constant [8 x i8] c"ap_fifo\00"
@str1455 = internal constant [1 x i8] zeroinitializer
@str1458 = internal constant [8 x i8] c"ap_fifo\00"
@str1459 = internal constant [1 x i8] zeroinitializer
@str1460 = internal constant [33 x i8] c"demux2setPathMetadata.V.length.V\00"
@str1461 = internal constant [1 x i8] zeroinitializer
@str1462 = internal constant [8 x i8] c"ap_fifo\00"
@str1463 = internal constant [1 x i8] zeroinitializer
@str1466 = internal constant [8 x i8] c"ap_fifo\00"
@str1467 = internal constant [1 x i8] zeroinitializer
@str1468 = internal constant [25 x i8] c"demux2getPath.V.length.V\00"
@str1469 = internal constant [1 x i8] zeroinitializer
@str1470 = internal constant [8 x i8] c"ap_fifo\00"
@str1471 = internal constant [1 x i8] zeroinitializer
@str1474 = internal constant [8 x i8] c"ap_fifo\00"
@str1475 = internal constant [1 x i8] zeroinitializer
@str1478 = internal constant [8 x i8] c"ap_fifo\00"
@str1479 = internal constant [1 x i8] zeroinitializer
@str1482 = internal constant [8 x i8] c"ap_fifo\00"
@str1483 = internal constant [1 x i8] zeroinitializer
@str1486 = internal constant [8 x i8] c"ap_fifo\00"
@str1487 = internal constant [1 x i8] zeroinitializer
@str1488 = internal constant [23 x i8] c"metadataBuffer.V.EOP.V\00"
@str1489 = internal constant [1 x i8] zeroinitializer
@str1490 = internal constant [8 x i8] c"ap_fifo\00"
@str1491 = internal constant [1 x i8] zeroinitializer
@str1492 = internal constant [14 x i8] c"keyBuffer.V.V\00"
@str1493 = internal constant [1 x i8] zeroinitializer
@str1494 = internal constant [8 x i8] c"ap_fifo\00"
@str1495 = internal constant [1 x i8] zeroinitializer
@str1496 = internal constant [17 x i8] c"filterPopSet.V.V\00"
@str1497 = internal constant [1 x i8] zeroinitializer
@str1498 = internal constant [8 x i8] c"ap_fifo\00"
@str1499 = internal constant [1 x i8] zeroinitializer
@str1500 = internal constant [17 x i8] c"filterPopGet.V.V\00"
@str1501 = internal constant [1 x i8] zeroinitializer
@str1502 = internal constant [8 x i8] c"ap_fifo\00"
@str1503 = internal constant [1 x i8] zeroinitializer
@str1506 = internal constant [8 x i8] c"ap_fifo\00"
@str1507 = internal constant [1 x i8] zeroinitializer
@str1510 = internal constant [8 x i8] c"ap_fifo\00"
@str1511 = internal constant [1 x i8] zeroinitializer
@str1514 = internal constant [8 x i8] c"ap_fifo\00"
@str1515 = internal constant [1 x i8] zeroinitializer
@str1518 = internal constant [8 x i8] c"ap_fifo\00"
@str1519 = internal constant [1 x i8] zeroinitializer
@str1522 = internal constant [8 x i8] c"ap_fifo\00"
@str1523 = internal constant [1 x i8] zeroinitializer
@str1526 = internal constant [8 x i8] c"ap_fifo\00"
@str1527 = internal constant [1 x i8] zeroinitializer
@str1528 = internal constant [22 x i8] c"accCtrl2demux.V.key.V\00"
@str1529 = internal constant [1 x i8] zeroinitializer
@str1530 = internal constant [8 x i8] c"ap_fifo\00"
@str1531 = internal constant [1 x i8] zeroinitializer
@str1532 = internal constant [22 x i8] c"metadataBuffer_rf.V.V\00"
@str1533 = internal constant [1 x i8] zeroinitializer
@str1534 = internal constant [8 x i8] c"ap_fifo\00"
@str1535 = internal constant [1 x i8] zeroinitializer
@str1536 = internal constant [19 x i8] c"valueBuffer_rf.V.V\00"
@str1537 = internal constant [1 x i8] zeroinitializer
@str1538 = internal constant [8 x i8] c"ap_fifo\00"
@str1539 = internal constant [1 x i8] zeroinitializer
@str1540 = internal constant [22 x i8] c"metadataBuffer_rp.V.V\00"
@str1541 = internal constant [1 x i8] zeroinitializer
@str1542 = internal constant [8 x i8] c"ap_fifo\00"
@str1543 = internal constant [1 x i8] zeroinitializer
@str1544 = internal constant [17 x i8] c"keyBuffer_rp.V.V\00"
@str1545 = internal constant [1 x i8] zeroinitializer
@str1546 = internal constant [8 x i8] c"ap_fifo\00"
@str1547 = internal constant [1 x i8] zeroinitializer
@str1548 = internal constant [19 x i8] c"valueBuffer_rp.V.V\00"
@str1549 = internal constant [1 x i8] zeroinitializer
@str1550 = internal constant [8 x i8] c"ap_fifo\00"
@str1551 = internal constant [1 x i8] zeroinitializer
@str1552 = internal constant [18 x i8] c"hashKeyBuffer.V.V\00"
@str1553 = internal constant [1 x i8] zeroinitializer
@str1554 = internal constant [8 x i8] c"ap_fifo\00"
@str1555 = internal constant [1 x i8] zeroinitializer
@str1556 = internal constant [20 x i8] c"hashValueBuffer.V.V\00"
@str1557 = internal constant [1 x i8] zeroinitializer
@str1558 = internal constant [8 x i8] c"ap_fifo\00"
@str1559 = internal constant [1 x i8] zeroinitializer
@str1560 = internal constant [17 x i8] c"hashMdBuffer.V.V\00"
@str1561 = internal constant [1 x i8] zeroinitializer
@str1562 = internal constant [8 x i8] c"ap_fifo\00"
@str1563 = internal constant [1 x i8] zeroinitializer
@str1566 = internal constant [8 x i8] c"ap_fifo\00"
@str1567 = internal constant [1 x i8] zeroinitializer
@str1570 = internal constant [8 x i8] c"ap_fifo\00"
@str1571 = internal constant [1 x i8] zeroinitializer
@str1572 = internal constant [14 x i8] c"in2cc.V.EOP.V\00"
@str1573 = internal constant [1 x i8] zeroinitializer
@str1574 = internal constant [8 x i8] c"ap_fifo\00"
@str1575 = internal constant [1 x i8] zeroinitializer
@str1578 = internal constant [8 x i8] c"ap_fifo\00"
@str1579 = internal constant [1 x i8] zeroinitializer
@str1582 = internal constant [8 x i8] c"ap_fifo\00"
@str1583 = internal constant [1 x i8] zeroinitializer
@str1586 = internal constant [8 x i8] c"ap_fifo\00"
@str1587 = internal constant [1 x i8] zeroinitializer
@str1588 = internal constant [24 x i8] c"in2ccMd.V.valueLength.V\00"
@str1589 = internal constant [1 x i8] zeroinitializer
@str1590 = internal constant [8 x i8] c"ap_fifo\00"
@str1591 = internal constant [1 x i8] zeroinitializer
@str1594 = internal constant [8 x i8] c"ap_fifo\00"
@str1595 = internal constant [1 x i8] zeroinitializer
@str1598 = internal constant [8 x i8] c"ap_fifo\00"
@str1599 = internal constant [1 x i8] zeroinitializer
@str1600 = internal constant [16 x i8] c"in2hash.V.EOP.V\00"
@str1601 = internal constant [1 x i8] zeroinitializer
@str1602 = internal constant [8 x i8] c"ap_fifo\00"
@str1603 = internal constant [1 x i8] zeroinitializer
@str1604 = internal constant [21 x i8] c"in2hashKeyLength.V.V\00"
@str1605 = internal constant [1 x i8] zeroinitializer
@str1606 = internal constant [8 x i8] c"ap_fifo\00"
@str1607 = internal constant [1 x i8] zeroinitializer
@str1608 = internal constant [12 x i8] c"hash2cc.V.V\00"
@str1609 = internal constant [1 x i8] zeroinitializer
@str1610 = internal constant [8 x i8] c"ap_fifo\00"
@str1611 = internal constant [1 x i8] zeroinitializer
@str1614 = internal constant [8 x i8] c"ap_fifo\00"
@str1615 = internal constant [1 x i8] zeroinitializer
@str1618 = internal constant [8 x i8] c"ap_fifo\00"
@str1619 = internal constant [1 x i8] zeroinitializer
@str1620 = internal constant [19 x i8] c"cc2memRead.V.EOP.V\00"
@str1621 = internal constant [1 x i8] zeroinitializer
@str1622 = internal constant [8 x i8] c"ap_fifo\00"
@str1623 = internal constant [1 x i8] zeroinitializer
@str1626 = internal constant [8 x i8] c"ap_fifo\00"
@str1627 = internal constant [1 x i8] zeroinitializer
@str1630 = internal constant [8 x i8] c"ap_fifo\00"
@str1631 = internal constant [1 x i8] zeroinitializer
@str1634 = internal constant [8 x i8] c"ap_fifo\00"
@str1635 = internal constant [1 x i8] zeroinitializer
@str1636 = internal constant [29 x i8] c"cc2memReadMd.V.valueLength.V\00"
@str1637 = internal constant [1 x i8] zeroinitializer
@str1638 = internal constant [8 x i8] c"ap_fifo\00"
@str1639 = internal constant [1 x i8] zeroinitializer
@str1642 = internal constant [8 x i8] c"ap_fifo\00"
@str1643 = internal constant [1 x i8] zeroinitializer
@str1646 = internal constant [8 x i8] c"ap_fifo\00"
@str1647 = internal constant [1 x i8] zeroinitializer
@str1648 = internal constant [19 x i8] c"memRd2comp.V.EOP.V\00"
@str1649 = internal constant [1 x i8] zeroinitializer
@str1650 = internal constant [8 x i8] c"ap_fifo\00"
@str1651 = internal constant [1 x i8] zeroinitializer
@str1654 = internal constant [8 x i8] c"ap_fifo\00"
@str1655 = internal constant [1 x i8] zeroinitializer
@str1658 = internal constant [8 x i8] c"ap_fifo\00"
@str1659 = internal constant [1 x i8] zeroinitializer
@str1662 = internal constant [8 x i8] c"ap_fifo\00"
@str1663 = internal constant [1 x i8] zeroinitializer
@str1664 = internal constant [29 x i8] c"memRd2compMd.V.valueLength.V\00"
@str1665 = internal constant [1 x i8] zeroinitializer
@str1666 = internal constant [8 x i8] c"ap_fifo\00"
@str1667 = internal constant [1 x i8] zeroinitializer
@str1670 = internal constant [8 x i8] c"ap_fifo\00"
@str1671 = internal constant [1 x i8] zeroinitializer
@str1674 = internal constant [8 x i8] c"ap_fifo\00"
@str1675 = internal constant [1 x i8] zeroinitializer
@str1678 = internal constant [8 x i8] c"ap_fifo\00"
@str1679 = internal constant [1 x i8] zeroinitializer
@str1680 = internal constant [21 x i8] c"memWr2out.V.status.V\00"
@str1681 = internal constant [1 x i8] zeroinitializer
@str1682 = internal constant [8 x i8] c"ap_fifo\00"
@str1683 = internal constant [1 x i8] zeroinitializer
@str1686 = internal constant [8 x i8] c"ap_fifo\00"
@str1687 = internal constant [1 x i8] zeroinitializer
@str1690 = internal constant [8 x i8] c"ap_fifo\00"
@str1691 = internal constant [1 x i8] zeroinitializer
@str1692 = internal constant [22 x i8] c"comp2memWrKey.V.EOP.V\00"
@str1693 = internal constant [1 x i8] zeroinitializer
@str1694 = internal constant [8 x i8] c"ap_fifo\00"
@str1695 = internal constant [1 x i8] zeroinitializer
@str1698 = internal constant [8 x i8] c"ap_fifo\00"
@str1699 = internal constant [1 x i8] zeroinitializer
@str1702 = internal constant [8 x i8] c"ap_fifo\00"
@str1703 = internal constant [1 x i8] zeroinitializer
@str1706 = internal constant [8 x i8] c"ap_fifo\00"
@str1707 = internal constant [1 x i8] zeroinitializer
@str1708 = internal constant [29 x i8] c"comp2memWrMd.V.valueLength.V\00"
@str1709 = internal constant [1 x i8] zeroinitializer
@str1710 = internal constant [8 x i8] c"ap_fifo\00"
@str1711 = internal constant [1 x i8] zeroinitializer
@str1712 = internal constant [22 x i8] c"comp2memWrMemData.V.V\00"
@str1713 = internal constant [1 x i8] zeroinitializer
@str1714 = internal constant [8 x i8] c"ap_fifo\00"
@str1715 = internal constant [1 x i8] zeroinitializer
@str1716 = internal constant [11 x i8] c"dec2cc.V.V\00"
@str1717 = internal constant [1 x i8] zeroinitializer
@str1718 = internal constant [8 x i8] c"ap_fifo\00"
@str1719 = internal constant [1 x i8] zeroinitializer
@str1720 = internal constant [15 x i8] c"resizedKey.V.V\00"
@str1721 = internal constant [1 x i8] zeroinitializer
@str1722 = internal constant [8 x i8] c"ap_fifo\00"
@str1723 = internal constant [1 x i8] zeroinitializer
@str1724 = internal constant [19 x i8] c"resizedKeyLength.V\00"
@str1725 = internal constant [1 x i8] zeroinitializer
@str1726 = internal constant [8 x i8] c"ap_fifo\00"
@str1727 = internal constant [1 x i8] zeroinitializer
@str1728 = internal constant [19 x i8] c"resizedInitValue.V\00"
@str1729 = internal constant [1 x i8] zeroinitializer
@str1730 = internal constant [8 x i8] c"ap_fifo\00"
@str1731 = internal constant [1 x i8] zeroinitializer
@accCtrl2demux_V = internal global i256 0
@cc2memRead_V = internal global i130 0
@cc2memReadMd_V = internal global i64 0
@comp2memWrKey_V = internal global i130 0
@comp2memWrMd_V = internal global i64 0
@comp2memWrStatus_V_bin = internal global i8 0
@demux2getPath_V = internal global i45 0
@demux2setPathMetadata_V = internal global i45 0
@demux2setPathValue_V = internal global i66 0
@flashDemux2getPath_V = internal global i48 0
@flashDemux2setPathMetadata_V = internal global i48 0
@flashDemux2setPathValue_V = internal global i66 0
@flashMetadataBuffer_V = internal global i128 0
@hashTable2splitter_V = internal global i256 0
@in2cc_V = internal global i130 0
@in2ccMd_V = internal global i64 0
@in2hash_V = internal global i130 0
@memRd2comp_V = internal global i130 0
@memRd2compMd_V = internal global i64 0
@memWr2out_V = internal global i57 0
@merger2responseFormatter_V = internal global i256 0
@metadataBuffer_V = internal global i128 0
@requestParser2hashTable_V = internal global i256 0
@splitter2valueStoreDram_V = internal global i256 0
@splitter2valueStoreFlash_V = internal global i256 0
@valueStoreDram2merger_V = internal global i256 0
@valueStoreFlash2merger_V = internal global i256 0
@accessCtrl_filterEntries_addre = internal unnamed_addr global i32 0
@accessCtrl_filterEntries_addre_1 = internal unnamed_addr global i32 0
@accessCtrl_filterEntries_addre_2 = internal unnamed_addr global i32 0
@accessCtrl_filterEntries_addre_3 = internal unnamed_addr global i32 0
@accessCtrl_filterEntries_addre_4 = internal unnamed_addr global i32 0
@accessCtrl_filterEntries_addre_5 = internal unnamed_addr global i32 0
@accessCtrl_filterEntries_addre_6 = internal unnamed_addr global i32 0
@accessCtrl_filterEntries_addre_7 = internal unnamed_addr global i32 0
@accessCtrl_filterEntries_opera = internal unnamed_addr global i8 0
@accessCtrl_filterEntries_opera_1 = internal unnamed_addr global i8 0
@accessCtrl_filterEntries_opera_2 = internal unnamed_addr global i8 0
@accessCtrl_filterEntries_opera_3 = internal unnamed_addr global i8 0
@accessCtrl_filterEntries_opera_4 = internal unnamed_addr global i8 0
@accessCtrl_filterEntries_opera_5 = internal unnamed_addr global i8 0
@accessCtrl_filterEntries_opera_6 = internal unnamed_addr global i8 0
@accessCtrl_filterEntries_opera_7 = internal unnamed_addr global i8 0
@accessCtrl_filterEntries_statu = internal unnamed_addr global i1 false
@accessCtrl_filterEntries_statu_1 = internal unnamed_addr global i1 false
@accessCtrl_filterEntries_statu_2 = internal unnamed_addr global i1 false
@accessCtrl_filterEntries_statu_3 = internal unnamed_addr global i1 false
@accessCtrl_filterEntries_statu_4 = internal unnamed_addr global i1 false
@accessCtrl_filterEntries_statu_5 = internal unnamed_addr global i1 false
@accessCtrl_filterEntries_statu_6 = internal unnamed_addr global i1 false
@accessCtrl_filterEntries_statu_7 = internal unnamed_addr global i1 false
@hashFilter_filterEntries_addre = internal unnamed_addr global i6 0
@hashFilter_filterEntries_addre_1 = internal unnamed_addr global i6 0
@hashFilter_filterEntries_addre_2 = internal unnamed_addr global i6 0
@hashFilter_filterEntries_addre_3 = internal unnamed_addr global i6 0
@hashFilter_filterEntries_addre_4 = internal unnamed_addr global i6 0
@hashFilter_filterEntries_addre_5 = internal unnamed_addr global i6 0
@hashFilter_filterEntries_addre_6 = internal unnamed_addr global i6 0
@hashFilter_filterEntries_addre_7 = internal unnamed_addr global i6 0
@hashFilter_filterEntries_opera = internal unnamed_addr global i8 0
@hashFilter_filterEntries_opera_1 = internal unnamed_addr global i8 0
@hashFilter_filterEntries_opera_2 = internal unnamed_addr global i8 0
@hashFilter_filterEntries_opera_3 = internal unnamed_addr global i8 0
@hashFilter_filterEntries_opera_4 = internal unnamed_addr global i8 0
@hashFilter_filterEntries_opera_5 = internal unnamed_addr global i8 0
@hashFilter_filterEntries_opera_6 = internal unnamed_addr global i8 0
@hashFilter_filterEntries_opera_7 = internal unnamed_addr global i8 0
@hashFilter_filterEntries_statu = internal unnamed_addr global i1 false
@hashFilter_filterEntries_statu_1 = internal unnamed_addr global i1 false
@hashFilter_filterEntries_statu_2 = internal unnamed_addr global i1 false
@hashFilter_filterEntries_statu_3 = internal unnamed_addr global i1 false
@hashFilter_filterEntries_statu_4 = internal unnamed_addr global i1 false
@hashFilter_filterEntries_statu_5 = internal unnamed_addr global i1 false
@hashFilter_filterEntries_statu_6 = internal unnamed_addr global i1 false
@hashFilter_filterEntries_statu_7 = internal unnamed_addr global i1 false
@str1945 = internal constant [23 x i8] c"comp2memWrStatus.V.bin\00"
@str1946 = internal constant [1 x i8] zeroinitializer
@str1947 = internal constant [8 x i8] c"ap_fifo\00"
@str1948 = internal constant [1 x i8] zeroinitializer
@br_outWordCounter = internal unnamed_addr global i5 0
@guard_variable_for_memWrite_st = internal unnamed_addr global i1 false
@guard_variable_for_ht_compare_s = internal unnamed_addr global i1 false
@bpr_wordCounter_V = internal unnamed_addr global i1 false
@memWr_location_V = internal unnamed_addr global i2 0
@memWr_replaceLocation_V = internal unnamed_addr global i2 0
@bpf_wordCounter_old = internal unnamed_addr global i5 0
@bpf_wordCounter = internal global i4 0

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define internal fastcc void @memcachedPipeline_splitter() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1314, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1315, [1 x i8]* @str1315, [8 x i8]* @str1314) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1310, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1311, [1 x i8]* @str1311, [8 x i8]* @str1310) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1306, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1307, [1 x i8]* @str1307, [8 x i8]* @str1306) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1302, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1303, [1 x i8]* @str1303, [8 x i8]* @str1302) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1298, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1299, [1 x i8]* @str1299, [8 x i8]* @str1298) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1294, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1295, [1 x i8]* @str1295, [8 x i8]* @str1294) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1290, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1291, [1 x i8]* @str1291, [8 x i8]* @str1290) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1286, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1287, [1 x i8]* @str1287, [8 x i8]* @str1286) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1282, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1283, [1 x i8]* @str1283, [8 x i8]* @str1282) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1278, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1279, [1 x i8]* @str1279, [8 x i8]* @str1278) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1274, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1275, [1 x i8]* @str1275, [8 x i8]* @str1274) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1270, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1271, [1 x i8]* @str1271, [8 x i8]* @str1270) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1266, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1267, [1 x i8]* @str1267, [8 x i8]* @str1266) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1262, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1263, [1 x i8]* @str1263, [8 x i8]* @str1262) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1230, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1231, [1 x i8]* @str1231, [8 x i8]* @str1230) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1226, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1227, [1 x i8]* @str1227, [8 x i8]* @str1226) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1222, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1223, [1 x i8]* @str1223, [8 x i8]* @str1222) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1218, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1219, [1 x i8]* @str1219, [8 x i8]* @str1218) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1214, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1215, [1 x i8]* @str1215, [8 x i8]* @str1214) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1210, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1211, [1 x i8]* @str1211, [8 x i8]* @str1210) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1206, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1207, [1 x i8]* @str1207, [8 x i8]* @str1206) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str11) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @hashTable2splitter_V, i32 1) nounwind
  br i1 %tmp, label %0, label %._crit_edge74

; <label>:0                                       ; preds = %codeRepl
  %tmp112 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @hashTable2splitter_V) nounwind
  %tmp_SOP_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp112, i32 124)
  %is_validFlag_load = load i1* @is_validFlag, align 1
  %dramOrFlash_V_load = load i1* @dramOrFlash_V, align 1
  br i1 %tmp_SOP_V, label %1, label %._crit_edge75

; <label>:1                                       ; preds = %0
  %p_Result_s = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %tmp112, i32 8, i32 39)
  %not_s = icmp ult i32 %p_Result_s, 2049
  store i1 %not_s, i1* @dramOrFlash_V, align 1
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %1, %0
  %is_validFlag_flag = phi i1 [ true, %1 ], [ false, %0 ]
  %is_validFlag_loc = phi i1 [ true, %1 ], [ %is_validFlag_load, %0 ]
  %dramOrFlash_V_loc = phi i1 [ %not_s, %1 ], [ %dramOrFlash_V_load, %0 ]
  br i1 %is_validFlag_loc, label %2, label %._crit_edge76

; <label>:2                                       ; preds = %._crit_edge75
  br i1 %dramOrFlash_V_loc, label %4, label %3

; <label>:3                                       ; preds = %2
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @splitter2valueStoreFlash_V, i256 %tmp112) nounwind
  br label %._crit_edge78

; <label>:4                                       ; preds = %2
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @splitter2valueStoreDram_V, i256 %tmp112) nounwind
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %4, %3
  %tmp_2 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp112, i32 127)
  %p_is_validFlag_flag = or i1 %tmp_2, %is_validFlag_flag
  %not_din_EOP_V_assign_load_2_ne = xor i1 %tmp_2, true
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge78, %._crit_edge75
  %is_validFlag_flag_2 = phi i1 [ %p_is_validFlag_flag, %._crit_edge78 ], [ %is_validFlag_flag, %._crit_edge75 ]
  %is_validFlag_new_2 = phi i1 [ %not_din_EOP_V_assign_load_2_ne, %._crit_edge78 ], [ true, %._crit_edge75 ]
  br i1 %is_validFlag_flag_2, label %mergeST, label %._crit_edge76.new

._crit_edge74:                                    ; preds = %._crit_edge76.new, %codeRepl
  ret void

mergeST:                                          ; preds = %._crit_edge76
  store i1 %is_validFlag_new_2, i1* @is_validFlag, align 1
  br label %._crit_edge76.new

._crit_edge76.new:                                ; preds = %mergeST, %._crit_edge76
  br label %._crit_edge74
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define internal fastcc void @memcachedPipeline_merger() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1370, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1371, [1 x i8]* @str1371, [8 x i8]* @str1370) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1366, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1367, [1 x i8]* @str1367, [8 x i8]* @str1366) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1362, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1363, [1 x i8]* @str1363, [8 x i8]* @str1362) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1358, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1359, [1 x i8]* @str1359, [8 x i8]* @str1358) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1354, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1355, [1 x i8]* @str1355, [8 x i8]* @str1354) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1350, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1351, [1 x i8]* @str1351, [8 x i8]* @str1350) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1346, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1347, [1 x i8]* @str1347, [8 x i8]* @str1346) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1342, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1343, [1 x i8]* @str1343, [8 x i8]* @str1342) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1338, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1339, [1 x i8]* @str1339, [8 x i8]* @str1338) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1334, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1335, [1 x i8]* @str1335, [8 x i8]* @str1334) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1330, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1331, [1 x i8]* @str1331, [8 x i8]* @str1330) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1326, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1327, [1 x i8]* @str1327, [8 x i8]* @str1326) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1322, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1323, [1 x i8]* @str1323, [8 x i8]* @str1322) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1318, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1319, [1 x i8]* @str1319, [8 x i8]* @str1318) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1258, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1259, [1 x i8]* @str1259, [8 x i8]* @str1258) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1254, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1255, [1 x i8]* @str1255, [8 x i8]* @str1254) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1250, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1251, [1 x i8]* @str1251, [8 x i8]* @str1250) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1246, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1247, [1 x i8]* @str1247, [8 x i8]* @str1246) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1242, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1243, [1 x i8]* @str1243, [8 x i8]* @str1242) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1238, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1239, [1 x i8]* @str1239, [8 x i8]* @str1238) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1234, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1235, [1 x i8]* @str1235, [8 x i8]* @str1234) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str37, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str138, [1 x i8]* @p_str138, [1 x i8]* @p_str138) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str138) nounwind
  %mergerState_load = load i1* @mergerState, align 1
  %dramOrFlash_V_1_load = load i1* @dramOrFlash_V_1, align 1
  br i1 %mergerState_load, label %5, label %0

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @valueStoreFlash2merger_V, i32 1) nounwind
  br i1 %tmp, label %1, label %2

; <label>:1                                       ; preds = %0
  %tmp273 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @merger2responseFormatter_V, i256 %tmp273) nounwind
  store i1 false, i1* @dramOrFlash_V_1, align 1
  store i1 true, i1* @mergerState, align 1
  br label %4

; <label>:2                                       ; preds = %0
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @valueStoreDram2merger_V, i32 1) nounwind
  br i1 %tmp_1, label %3, label %._crit_edge86

; <label>:3                                       ; preds = %2
  %tmp_2317 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @merger2responseFormatter_V, i256 %tmp_2317) nounwind
  store i1 true, i1* @dramOrFlash_V_1, align 1
  store i1 true, i1* @mergerState, align 1
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %3, %2
  br label %4

; <label>:4                                       ; preds = %._crit_edge86, %1
  br label %._crit_edge85

; <label>:5                                       ; preds = %codeRepl
  br i1 %dramOrFlash_V_1_load, label %.critedge, label %6

; <label>:6                                       ; preds = %5
  %tmp_3 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @valueStoreFlash2merger_V, i32 1) nounwind
  br i1 %tmp_3, label %7, label %._crit_edge90

; <label>:7                                       ; preds = %6
  %tmp_4361 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V) nounwind
  %tmp_EOP_V_1 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_4361, i32 127)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @merger2responseFormatter_V, i256 %tmp_4361) nounwind
  br i1 %tmp_EOP_V_1, label %8, label %._crit_edge89

; <label>:8                                       ; preds = %7
  store i1 false, i1* @mergerState, align 1
  br label %._crit_edge89

._crit_edge89:                                    ; preds = %8, %7
  br label %11

.critedge:                                        ; preds = %5
  %tmp_2 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @valueStoreDram2merger_V, i32 1) nounwind
  br i1 %tmp_2, label %9, label %._crit_edge90

; <label>:9                                       ; preds = %.critedge
  %tmp_6 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V) nounwind
  %tmp_EOP_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_6, i32 127)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @merger2responseFormatter_V, i256 %tmp_6) nounwind
  br i1 %tmp_EOP_V, label %10, label %._crit_edge92

; <label>:10                                      ; preds = %9
  store i1 false, i1* @mergerState, align 1
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %10, %9
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %._crit_edge92, %.critedge, %6
  br label %11

; <label>:11                                      ; preds = %._crit_edge90, %._crit_edge89
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %11, %4
  ret void
}

declare i96 @llvm.part.set.i96.i32(i96, i32, i32, i32) nounwind readnone

declare i96 @llvm.part.set.i96.i64(i96, i64, i32, i32) nounwind readnone

define internal fastcc void @memcachedPipeline_flashDemux() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i64* @flashKeyBuffer_V_V, [8 x i8]* @str1430, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1431, [1 x i8]* @str1431, [8 x i8]* @str1430)
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1426, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1427, [1 x i8]* @str1427, [8 x i8]* @str1426) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1422, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1423, [1 x i8]* @str1423, [8 x i8]* @str1422) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1418, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1419, [1 x i8]* @str1419, [8 x i8]* @str1418) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1414, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1415, [1 x i8]* @str1415, [8 x i8]* @str1414) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1410, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1411, [1 x i8]* @str1411, [8 x i8]* @str1410) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2getPath_V, [8 x i8]* @str1406, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1407, [1 x i8]* @str1407, [8 x i8]* @str1406) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2getPath_V, [8 x i8]* @str1402, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1403, [1 x i8]* @str1403, [8 x i8]* @str1402) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2setPathMetadata_V, [8 x i8]* @str1398, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1399, [1 x i8]* @str1399, [8 x i8]* @str1398) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2setPathMetadata_V, [8 x i8]* @str1394, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1395, [1 x i8]* @str1395, [8 x i8]* @str1394) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @flashDemux2setPathValue_V, [8 x i8]* @str1386, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1387, [1 x i8]* @str1387, [8 x i8]* @str1386) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @flashDemux2setPathValue_V, [8 x i8]* @str1382, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1383, [1 x i8]* @str1383, [8 x i8]* @str1382) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @flashDemux2setPathValue_V, [8 x i8]* @str1378, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1379, [1 x i8]* @str1379, [8 x i8]* @str1378) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1286, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1287, [1 x i8]* @str1287, [8 x i8]* @str1286) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1282, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1283, [1 x i8]* @str1283, [8 x i8]* @str1282) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1278, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1279, [1 x i8]* @str1279, [8 x i8]* @str1278) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1274, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1275, [1 x i8]* @str1275, [8 x i8]* @str1274) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1270, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1271, [1 x i8]* @str1271, [8 x i8]* @str1270) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1266, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1267, [1 x i8]* @str1267, [8 x i8]* @str1266) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1262, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1263, [1 x i8]* @str1263, [8 x i8]* @str1262) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str90, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str191, [1 x i8]* @p_str191, [1 x i8]* @p_str191) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str191) nounwind
  %flashDemuxState_load = load i2* @flashDemuxState, align 1
  %flashWordCounter_V_load = load i2* @flashWordCounter_V, align 1
  %flashDemuxValueLength_V_load = load i16* @flashDemuxValueLength_V, align 2
  switch i2 %flashDemuxState_load, label %._crit_edge530 [
    i2 0, label %0
    i2 -2, label %13
    i2 1, label %18
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp_3 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @splitter2valueStoreFlash_V, i32 1) nounwind
  br i1 %tmp_3, label %1, label %._crit_edge531

; <label>:1                                       ; preds = %0
  %tmp272 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @splitter2valueStoreFlash_V) nounwind
  %p_Val2_s = trunc i256 %tmp272 to i124
  %metadataWrWord_SOP_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp272, i32 124)
  %metadataWrWord_keyValid_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp272, i32 125)
  %setData_data_V = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp272, i32 128, i32 191)
  %tmp_V_2 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp272, i32 192, i32 255)
  br i1 %metadataWrWord_SOP_V, label %2, label %._crit_edge532

; <label>:2                                       ; preds = %1
  store i2 1, i2* @flashWordCounter_V, align 1
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp272, i32 112)
  br i1 %tmp_25, label %._crit_edge533, label %3

; <label>:3                                       ; preds = %2
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256 %tmp272, i32 104, i32 111)
  %tmp_27 = icmp eq i8 %p_Result_s, 8
  %tmp_28 = icmp eq i8 %p_Result_s, 4
  %tmp_29 = or i1 %tmp_28, %tmp_27
  br i1 %tmp_29, label %._crit_edge533, label %6

._crit_edge533:                                   ; preds = %3, %2
  %tmp_4 = call i3 @_ssdm_op_PartSelect.i3.i256.i32.i32(i256 %tmp272, i32 125, i32 127)
  %tmp_1301 = call i128 @_ssdm_op_BitConcatenate.i128.i3.i1.i124(i3 %tmp_4, i1 true, i124 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @flashMetadataBuffer_V, i128 %tmp_1301) nounwind
  br i1 %metadataWrWord_keyValid_V, label %4, label %._crit_edge536

; <label>:4                                       ; preds = %._crit_edge533
  %p_Result_2 = call i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256 %tmp272, i32 104, i32 111)
  %tmp_s = icmp eq i8 %p_Result_2, 8
  br i1 %tmp_s, label %._crit_edge536, label %5

; <label>:5                                       ; preds = %4
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V, i64 %tmp_V_2) nounwind
  br label %._crit_edge536

._crit_edge536:                                   ; preds = %5, %4, %._crit_edge533
  store i2 -2, i2* @flashDemuxState, align 1
  br label %12

; <label>:6                                       ; preds = %3
  %tmp_6 = icmp eq i8 %p_Result_s, 0
  br i1 %tmp_6, label %7, label %9

; <label>:7                                       ; preds = %6
  %tmp_7 = call i3 @_ssdm_op_PartSelect.i3.i256.i32.i32(i256 %tmp272, i32 125, i32 127)
  %tmp_2331 = call i128 @_ssdm_op_BitConcatenate.i128.i3.i1.i124(i3 %tmp_7, i1 true, i124 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @flashMetadataBuffer_V, i128 %tmp_2331) nounwind
  %getMd_address_V = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %tmp272, i32 72, i32 103)
  %getMd_length_V = call i16 @_ssdm_op_PartSelect.i16.i256.i32.i32(i256 %tmp272, i32 8, i32 23)
  %tmp_3347 = call i48 @_ssdm_op_BitConcatenate.i48.i16.i32(i16 %getMd_length_V, i32 %getMd_address_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i48P(i48* @flashDemux2getPath_V, i48 %tmp_3347) nounwind
  br i1 %metadataWrWord_keyValid_V, label %8, label %._crit_edge538

; <label>:8                                       ; preds = %7
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V, i64 %tmp_V_2) nounwind
  br label %._crit_edge538

._crit_edge538:                                   ; preds = %8, %7
  store i2 -2, i2* @flashDemuxState, align 1
  br label %11

; <label>:9                                       ; preds = %6
  %tmp_1 = icmp eq i8 %p_Result_s, 1
  br i1 %tmp_1, label %._crit_edge540, label %._crit_edge539

._crit_edge540:                                   ; preds = %9
  %tmp_10 = call i3 @_ssdm_op_PartSelect.i3.i256.i32.i32(i256 %tmp272, i32 125, i32 127)
  %tmp_4352 = call i128 @_ssdm_op_BitConcatenate.i128.i3.i1.i124(i3 %tmp_10, i1 true, i124 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @flashMetadataBuffer_V, i128 %tmp_4352) nounwind
  %setMd_address_V = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %tmp272, i32 72, i32 103)
  %setMd_length_V = call i16 @_ssdm_op_PartSelect.i16.i256.i32.i32(i256 %tmp272, i32 8, i32 23)
  %tmp_5368 = call i48 @_ssdm_op_BitConcatenate.i48.i16.i32(i16 %setMd_length_V, i32 %setMd_address_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i48P(i48* @flashDemux2setPathMetadata_V, i48 %tmp_5368) nounwind
  %tmp_EOP_V_4 = icmp ult i16 %setMd_length_V, 9
  %tmp_11 = add i16 %setMd_length_V, -8
  %tmp_length_V_2 = select i1 %tmp_EOP_V_4, i16 %setMd_length_V, i16 %tmp_11
  store i16 %tmp_length_V_2, i16* @flashDemuxValueLength_V, align 2
  %tmp_6373 = call i66 @_ssdm_op_BitConcatenate.i66.i1.i1.i64(i1 %tmp_EOP_V_4, i1 true, i64 %setData_data_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i66P(i66* @flashDemux2setPathValue_V, i66 %tmp_6373) nounwind
  br i1 %metadataWrWord_keyValid_V, label %10, label %._crit_edge541

; <label>:10                                      ; preds = %._crit_edge540
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V, i64 %tmp_V_2) nounwind
  br label %._crit_edge541

._crit_edge541:                                   ; preds = %10, %._crit_edge540
  store i2 1, i2* @flashDemuxState, align 1
  br label %._crit_edge539

._crit_edge539:                                   ; preds = %._crit_edge541, %9
  br label %11

; <label>:11                                      ; preds = %._crit_edge539, %._crit_edge538
  br label %12

; <label>:12                                      ; preds = %11, %._crit_edge536
  br label %._crit_edge532

._crit_edge532:                                   ; preds = %12, %1
  br label %._crit_edge531

._crit_edge531:                                   ; preds = %._crit_edge532, %0
  br label %._crit_edge530

; <label>:13                                      ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @splitter2valueStoreFlash_V, i32 1) nounwind
  br i1 %tmp, label %14, label %._crit_edge542

; <label>:14                                      ; preds = %13
  %tmp_7381 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @splitter2valueStoreFlash_V) nounwind
  %metadataWrWord_keyValid_V_2 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_7381, i32 125)
  %metadataWrWord_EOP_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_7381, i32 127)
  %tmp_V_1 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_7381, i32 192, i32 255)
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %flashWordCounter_V_load, i32 1)
  br i1 %tmp_23, label %._crit_edge543, label %15

; <label>:15                                      ; preds = %14
  %tmp_8410 = trunc i256 %tmp_7381 to i128
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @flashMetadataBuffer_V, i128 %tmp_8410) nounwind
  %tmp_8 = add i2 1, %flashWordCounter_V_load
  store i2 %tmp_8, i2* @flashWordCounter_V, align 1
  br label %._crit_edge543

._crit_edge543:                                   ; preds = %14, %15
  br i1 %metadataWrWord_keyValid_V_2, label %16, label %._crit_edge544

; <label>:16                                      ; preds = %._crit_edge543
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V, i64 %tmp_V_1) nounwind
  br label %._crit_edge544

._crit_edge544:                                   ; preds = %16, %._crit_edge543
  br i1 %metadataWrWord_EOP_V, label %17, label %._crit_edge545

; <label>:17                                      ; preds = %._crit_edge544
  store i2 0, i2* @flashDemuxState, align 1
  br label %._crit_edge545

._crit_edge545:                                   ; preds = %17, %._crit_edge544
  br label %._crit_edge542

._crit_edge542:                                   ; preds = %._crit_edge545, %13
  br label %._crit_edge530

; <label>:18                                      ; preds = %codeRepl
  %tmp_9421 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @splitter2valueStoreFlash_V) nounwind
  %metadataWrWord_keyValid_V_3 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_9421, i32 125)
  %metadataWrWord_valueValid_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_9421, i32 126)
  %metadataWrWord_EOP_V_2 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_9421, i32 127)
  %setData_data_V_2 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_9421, i32 128, i32 191)
  %tmp_V = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_9421, i32 192, i32 255)
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %flashWordCounter_V_load, i32 1)
  br i1 %tmp_17, label %._crit_edge546, label %19

; <label>:19                                      ; preds = %18
  %tmp_10312 = trunc i256 %tmp_9421 to i128
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @flashMetadataBuffer_V, i128 %tmp_10312) nounwind
  %tmp_2 = add i2 1, %flashWordCounter_V_load
  store i2 %tmp_2, i2* @flashWordCounter_V, align 1
  br label %._crit_edge546

._crit_edge546:                                   ; preds = %18, %19
  br i1 %metadataWrWord_keyValid_V_3, label %20, label %._crit_edge547

; <label>:20                                      ; preds = %._crit_edge546
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V, i64 %tmp_V) nounwind
  br label %._crit_edge547

._crit_edge547:                                   ; preds = %20, %._crit_edge546
  %tmp_9 = icmp ult i16 %flashDemuxValueLength_V_load, 9
  br i1 %tmp_9, label %._crit_edge548, label %21

; <label>:21                                      ; preds = %._crit_edge547
  %tmp_5 = add i16 %flashDemuxValueLength_V_load, -8
  store i16 %tmp_5, i16* @flashDemuxValueLength_V, align 2
  br label %._crit_edge548

._crit_edge548:                                   ; preds = %21, %._crit_edge547
  %tmp_EOP_V_3 = phi i1 [ false, %21 ], [ true, %._crit_edge547 ]
  br i1 %metadataWrWord_valueValid_V, label %22, label %._crit_edge549

; <label>:22                                      ; preds = %._crit_edge548
  %tmp_11323 = call i66 @_ssdm_op_BitConcatenate.i66.i1.i1.i64(i1 %tmp_EOP_V_3, i1 false, i64 %setData_data_V_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.i66P(i66* @flashDemux2setPathValue_V, i66 %tmp_11323) nounwind
  br label %._crit_edge549

._crit_edge549:                                   ; preds = %22, %._crit_edge548
  br i1 %metadataWrWord_EOP_V_2, label %23, label %._crit_edge550

; <label>:23                                      ; preds = %._crit_edge549
  store i2 0, i2* @flashDemuxState, align 1
  br label %._crit_edge550

._crit_edge550:                                   ; preds = %23, %._crit_edge549
  br label %._crit_edge530

._crit_edge530:                                   ; preds = %._crit_edge550, %._crit_edge542, %._crit_edge531, %codeRepl
  ret void
}

define internal fastcc void @memcachedPipeline_flashRemux() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i64* @flashKeyBuffer_V_V, [8 x i8]* @str1430, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1431, [1 x i8]* @str1431, [8 x i8]* @str1430)
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1426, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1427, [1 x i8]* @str1427, [8 x i8]* @str1426) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1422, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1423, [1 x i8]* @str1423, [8 x i8]* @str1422) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1418, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1419, [1 x i8]* @str1419, [8 x i8]* @str1418) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1414, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1415, [1 x i8]* @str1415, [8 x i8]* @str1414) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1410, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1411, [1 x i8]* @str1411, [8 x i8]* @str1410) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @flashGetPath2remux_V_V, [8 x i8]* @str1390, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1391, [1 x i8]* @str1391, [8 x i8]* @str1390)
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1342, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1343, [1 x i8]* @str1343, [8 x i8]* @str1342) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1338, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1339, [1 x i8]* @str1339, [8 x i8]* @str1338) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1334, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1335, [1 x i8]* @str1335, [8 x i8]* @str1334) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1330, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1331, [1 x i8]* @str1331, [8 x i8]* @str1330) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1326, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1327, [1 x i8]* @str1327, [8 x i8]* @str1326) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1322, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1323, [1 x i8]* @str1323, [8 x i8]* @str1322) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1318, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1319, [1 x i8]* @str1319, [8 x i8]* @str1318) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str90, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str191, [1 x i8]* @p_str191, [1 x i8]* @p_str191) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str191) nounwind
  %flashRemuxState_load = load i3* @flashRemuxState, align 1
  %flashRmMdBuffer_metadata_V_loa = load i124* @flashRmMdBuffer_metadata_V, align 8
  %flashRmKeyLength_load = load i8* @flashRmKeyLength, align 1
  %flashRmValueLength_load = load i16* @flashRmValueLength, align 2
  %tmp_17 = icmp eq i8 %flashRmKeyLength_load, 0
  %tmp_30 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %flashRmKeyLength_load, i32 3, i32 7)
  %icmp = icmp ne i5 %tmp_30, 0
  switch i3 %flashRemuxState_load, label %._crit_edge606 [
    i3 0, label %0
    i3 1, label %._crit_edge607
    i3 2, label %8
    i3 -1, label %12
    i3 -3, label %14
    i3 -4, label %18
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i128P(i128* @flashMetadataBuffer_V, i32 1) nounwind
  br i1 %tmp, label %1, label %._crit_edge607

; <label>:1                                       ; preds = %0
  %tmp338 = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* @flashMetadataBuffer_V) nounwind
  %p_Val2_s = trunc i128 %tmp338 to i124
  store i124 %p_Val2_s, i124* @flashRmMdBuffer_metadata_V, align 8
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i128.i32(i128 %tmp338, i32 124)
  %tmp_36 = trunc i128 %tmp338 to i8
  %p_s = select i1 %tmp_34, i1 true, i1 false
  %p_flashRmKeyLength_load = select i1 %tmp_34, i8 %tmp_36, i8 %flashRmKeyLength_load
  br label %._crit_edge607

._crit_edge607:                                   ; preds = %1, %0, %codeRepl
  %flashRemuxState_flag_2 = phi i1 [ false, %codeRepl ], [ false, %0 ], [ %p_s, %1 ]
  %p_Val2_3 = phi i124 [ %flashRmMdBuffer_metadata_V_loa, %codeRepl ], [ %flashRmMdBuffer_metadata_V_loa, %0 ], [ %p_Val2_s, %1 ]
  %flashRmKeyLength_loc_2 = phi i8 [ %flashRmKeyLength_load, %codeRepl ], [ %flashRmKeyLength_load, %0 ], [ %p_flashRmKeyLength_load, %1 ]
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i124.i32.i32(i124 %p_Val2_3, i32 112, i32 119)
  %tmp_s = icmp eq i8 %p_Result_s, 1
  br i1 %tmp_s, label %._crit_edge610, label %2

; <label>:2                                       ; preds = %._crit_edge607
  %p_Result_4 = call i8 @_ssdm_op_PartSelect.i8.i124.i32.i32(i124 %p_Val2_3, i32 104, i32 111)
  %tmp_45 = icmp eq i8 %p_Result_4, 8
  %tmp_46 = icmp eq i8 %p_Result_4, 4
  %tmp_47 = or i1 %tmp_46, %tmp_45
  %tmp_48 = icmp eq i8 %p_Result_4, 1
  %tmp_49 = or i1 %tmp_48, %tmp_47
  br i1 %tmp_49, label %._crit_edge610, label %5

._crit_edge610:                                   ; preds = %2, %._crit_edge607
  %tmp_20 = icmp eq i8 %flashRmKeyLength_loc_2, 0
  br i1 %tmp_20, label %4, label %3

; <label>:3                                       ; preds = %._crit_edge610
  %tmp_16 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @flashKeyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_16, label %._crit_edge615, label %._crit_edge606

._crit_edge615:                                   ; preds = %3
  %tmp_V = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V) nounwind
  %tmp_50 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %flashRmKeyLength_loc_2, i32 3, i32 7)
  %icmp3 = icmp ne i5 %tmp_50, 0
  %tmp_24 = add i8 %flashRmKeyLength_loc_2, -8
  %storemerge8 = select i1 %icmp3, i8 %tmp_24, i8 0
  %tmp_1 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i68.i124(i64 %tmp_V, i68 3, i124 %p_Val2_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V, i256 %tmp_1) nounwind
  br label %._crit_edge606

; <label>:4                                       ; preds = %._crit_edge610
  %tmp_2 = call i256 @_ssdm_op_BitConcatenate.i256.i132.i124(i132 1, i124 %p_Val2_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V, i256 %tmp_2) nounwind
  br label %._crit_edge606

; <label>:5                                       ; preds = %2
  %tmp_23 = icmp eq i8 %p_Result_4, 0
  br i1 %tmp_23, label %6, label %._crit_edge606

; <label>:6                                       ; preds = %5
  %tmp_15 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @flashGetPath2remux_V_V, i32 1) nounwind
  br i1 %tmp_15, label %7, label %._crit_edge606

; <label>:7                                       ; preds = %6
  %tmp_26 = icmp eq i8 %flashRmKeyLength_loc_2, 0
  br i1 %tmp_26, label %._crit_edge618, label %._crit_edge619

._crit_edge619:                                   ; preds = %7
  %tmp_V_3 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V) nounwind
  %tmp_52 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %flashRmKeyLength_loc_2, i32 3, i32 7)
  %icmp6 = icmp ne i5 %tmp_52, 0
  %tmp_27 = add i8 %flashRmKeyLength_loc_2, -8
  %storemerge9 = select i1 %icmp6, i8 %tmp_27, i8 0
  br label %._crit_edge618

._crit_edge618:                                   ; preds = %._crit_edge619, %7
  %flashRmKeyLength_flag_5 = phi i1 [ %flashRemuxState_flag_2, %7 ], [ true, %._crit_edge619 ]
  %flashRmKeyLength_new_5 = phi i8 [ %flashRmKeyLength_loc_2, %7 ], [ %storemerge9, %._crit_edge619 ]
  %tmp_keyValid_V_6 = phi i1 [ false, %7 ], [ true, %._crit_edge619 ]
  %tmp_key_V_5 = phi i64 [ 0, %7 ], [ %tmp_V_3, %._crit_edge619 ]
  %p_Result_5 = call i16 @_ssdm_op_PartSelect.i16.i124.i32.i32(i124 %p_Val2_3, i32 8, i32 23)
  %tmp_53 = call i13 @_ssdm_op_PartSelect.i13.i124.i32.i32(i124 %p_Val2_3, i32 11, i32 23)
  %icmp9 = icmp ne i13 %tmp_53, 0
  %tmp_29 = add i16 -8, %p_Result_5
  %storemerge3 = select i1 %icmp9, i16 %tmp_29, i16 0
  store i16 %storemerge3, i16* @flashRmValueLength, align 2
  %tmp_V_4 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @flashGetPath2remux_V_V) nounwind
  %tmp_3 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i2.i1.i1.i124(i64 %tmp_key_V_5, i64 %tmp_V_4, i2 1, i1 %tmp_keyValid_V_6, i1 true, i124 %p_Val2_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V, i256 %tmp_3) nounwind
  br label %._crit_edge606

; <label>:8                                       ; preds = %codeRepl
  %tmp_7 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i128P(i128* @flashMetadataBuffer_V, i32 1) nounwind
  br i1 %tmp_7, label %9, label %._crit_edge606

; <label>:9                                       ; preds = %8
  %tmp_4 = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* @flashMetadataBuffer_V) nounwind
  %flashOutputWord_metadata_V = trunc i128 %tmp_4 to i124
  store i124 %flashOutputWord_metadata_V, i124* @flashRmMdBuffer_metadata_V, align 8
  br i1 %tmp_17, label %11, label %10

; <label>:10                                      ; preds = %9
  %tmp_11 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @flashKeyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_11, label %._crit_edge623, label %._crit_edge606

._crit_edge623:                                   ; preds = %10
  %tmp_V_5 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V) nounwind
  %tmp_21 = add i8 -8, %flashRmKeyLength_load
  %storemerge2 = select i1 %icmp, i8 %tmp_21, i8 0
  %tmp_EOP_V = icmp eq i8 %storemerge2, 0
  %not_tmp_EOP_V = xor i1 %tmp_EOP_V, true
  %storemerge3_cast = select i1 %not_tmp_EOP_V, i3 -1, i3 0
  %tmp_5 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i3.i124(i64 %tmp_V_5, i64 0, i1 %tmp_EOP_V, i3 2, i124 %flashOutputWord_metadata_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V, i256 %tmp_5) nounwind
  br label %._crit_edge606

; <label>:11                                      ; preds = %9
  %tmp_6 = call i256 @_ssdm_op_BitConcatenate.i256.i132.i124(i132 8, i124 %flashOutputWord_metadata_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V, i256 %tmp_6) nounwind
  br label %._crit_edge606

; <label>:12                                      ; preds = %codeRepl
  br i1 %tmp_17, label %._crit_edge606, label %13

; <label>:13                                      ; preds = %12
  %tmp_9 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @flashKeyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_9, label %._crit_edge626, label %._crit_edge606

._crit_edge626:                                   ; preds = %13
  %tmp_V_6 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V) nounwind
  %tmp_18 = add i8 %flashRmKeyLength_load, -8
  %storemerge1 = select i1 %icmp, i8 %tmp_18, i8 0
  %tmp_EOP_V_5 = icmp eq i8 %storemerge1, 0
  %tmp_7489 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i127(i64 %tmp_V_6, i64 0, i1 %tmp_EOP_V_5, i127 42535295865117307932921825928971026432)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V, i256 %tmp_7489) nounwind
  br label %._crit_edge606

; <label>:14                                      ; preds = %codeRepl
  %tmp_8 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i128P(i128* @flashMetadataBuffer_V, i32 1) nounwind
  br i1 %tmp_8, label %15, label %._crit_edge606

; <label>:15                                      ; preds = %14
  br i1 %tmp_17, label %._crit_edge629, label %16

; <label>:16                                      ; preds = %15
  %tmp_12 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @flashKeyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_12, label %._crit_edge629, label %._crit_edge606

._crit_edge629:                                   ; preds = %16, %15
  %tmp_22 = icmp eq i16 %flashRmValueLength_load, 0
  br i1 %tmp_22, label %._crit_edge633, label %17

; <label>:17                                      ; preds = %._crit_edge629
  %tmp_14 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @flashGetPath2remux_V_V, i32 1) nounwind
  br i1 %tmp_14, label %._crit_edge633, label %._crit_edge606

._crit_edge633:                                   ; preds = %17, %._crit_edge629
  %tmp_8509 = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* @flashMetadataBuffer_V) nounwind
  %flashOutputWord_metadata_V_1 = trunc i128 %tmp_8509 to i124
  store i124 %flashOutputWord_metadata_V_1, i124* @flashRmMdBuffer_metadata_V, align 8
  br i1 %tmp_17, label %._crit_edge637, label %._crit_edge638

._crit_edge638:                                   ; preds = %._crit_edge633
  %tmp_V_7 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V) nounwind
  %tmp_28 = add i8 %flashRmKeyLength_load, -8
  %storemerge5 = select i1 %icmp, i8 %tmp_28, i8 0
  br label %._crit_edge637

._crit_edge637:                                   ; preds = %._crit_edge638, %._crit_edge633
  %tmp_keyValid_V = phi i1 [ false, %._crit_edge633 ], [ true, %._crit_edge638 ]
  %flashRmKeyLength_load_1 = phi i8 [ %flashRmKeyLength_load, %._crit_edge633 ], [ %storemerge5, %._crit_edge638 ]
  %tmp_key_V_3 = phi i64 [ 0, %._crit_edge633 ], [ %tmp_V_7, %._crit_edge638 ]
  br i1 %tmp_22, label %._crit_edge639, label %._crit_edge640

._crit_edge640:                                   ; preds = %._crit_edge637
  %tmp_V_8 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @flashGetPath2remux_V_V) nounwind
  %tmp_55 = call i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16 %flashRmValueLength_load, i32 3, i32 15)
  %icmp2 = icmp ne i13 %tmp_55, 0
  %tmp_32 = add i16 %flashRmValueLength_load, -8
  %storemerge6 = select i1 %icmp2, i16 %tmp_32, i16 0
  store i16 %storemerge6, i16* @flashRmValueLength, align 2
  br label %._crit_edge639

._crit_edge639:                                   ; preds = %._crit_edge640, %._crit_edge637
  %tmp_38 = phi i16 [ %storemerge6, %._crit_edge640 ], [ %flashRmValueLength_load, %._crit_edge637 ]
  %tmp_valueValid_V = phi i1 [ true, %._crit_edge640 ], [ false, %._crit_edge637 ]
  %tmp_value_V = phi i64 [ %tmp_V_8, %._crit_edge640 ], [ 0, %._crit_edge637 ]
  %tmp_39 = icmp eq i16 %tmp_38, 0
  %tmp_40 = icmp eq i8 %flashRmKeyLength_load_1, 0
  %tmp_EOP_V_6 = and i1 %tmp_39, %tmp_40
  %storemerge7 = select i1 %tmp_EOP_V_6, i3 0, i3 -4
  %tmp_9530 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i1.i124(i64 %tmp_key_V_3, i64 %tmp_value_V, i1 %tmp_EOP_V_6, i1 %tmp_valueValid_V, i1 %tmp_keyValid_V, i1 false, i124 %flashOutputWord_metadata_V_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V, i256 %tmp_9530) nounwind
  br label %._crit_edge606

; <label>:18                                      ; preds = %codeRepl
  br i1 %tmp_17, label %._crit_edge641, label %19

; <label>:19                                      ; preds = %18
  %tmp_10 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @flashKeyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_10, label %._crit_edge641, label %._crit_edge606

._crit_edge641:                                   ; preds = %19, %18
  %tmp_19 = icmp eq i16 %flashRmValueLength_load, 0
  br i1 %tmp_19, label %._crit_edge645, label %20

; <label>:20                                      ; preds = %._crit_edge641
  %tmp_13 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @flashGetPath2remux_V_V, i32 1) nounwind
  br i1 %tmp_13, label %._crit_edge645, label %._crit_edge606

._crit_edge645:                                   ; preds = %20, %._crit_edge641
  br i1 %tmp_17, label %._crit_edge649, label %._crit_edge650

._crit_edge650:                                   ; preds = %._crit_edge645
  %tmp_V_9 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @flashKeyBuffer_V_V) nounwind
  %tmp_25 = add i8 %flashRmKeyLength_load, -8
  %storemerge4 = select i1 %icmp, i8 %tmp_25, i8 0
  br label %._crit_edge649

._crit_edge649:                                   ; preds = %._crit_edge650, %._crit_edge645
  %tmp_keyValid_V_5 = phi i1 [ false, %._crit_edge645 ], [ true, %._crit_edge650 ]
  %flashRmKeyLength_load_s = phi i8 [ %flashRmKeyLength_load, %._crit_edge645 ], [ %storemerge4, %._crit_edge650 ]
  %tmp_key_V_4 = phi i64 [ 0, %._crit_edge645 ], [ %tmp_V_9, %._crit_edge650 ]
  br i1 %tmp_19, label %._crit_edge651, label %._crit_edge652

._crit_edge652:                                   ; preds = %._crit_edge649
  %tmp_V_10 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @flashGetPath2remux_V_V) nounwind
  %tmp_54 = call i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16 %flashRmValueLength_load, i32 3, i32 15)
  %icmp1 = icmp ne i13 %tmp_54, 0
  %tmp_31 = add i16 %flashRmValueLength_load, -8
  %storemerge = select i1 %icmp1, i16 %tmp_31, i16 0
  store i16 %storemerge, i16* @flashRmValueLength, align 2
  br label %._crit_edge651

._crit_edge651:                                   ; preds = %._crit_edge652, %._crit_edge649
  %tmp_33 = phi i16 [ %storemerge, %._crit_edge652 ], [ %flashRmValueLength_load, %._crit_edge649 ]
  %tmp_valueValid_V_1 = phi i1 [ true, %._crit_edge652 ], [ false, %._crit_edge649 ]
  %tmp_value_V_1 = phi i64 [ %tmp_V_10, %._crit_edge652 ], [ 0, %._crit_edge649 ]
  %tmp_35 = icmp eq i16 %tmp_33, 0
  %tmp_37 = icmp eq i8 %flashRmKeyLength_load_s, 0
  %tmp_EOP_V_7 = and i1 %tmp_35, %tmp_37
  %tmp_10377 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i125(i64 %tmp_key_V_4, i64 %tmp_value_V_1, i1 %tmp_EOP_V_7, i1 %tmp_valueValid_V_1, i1 %tmp_keyValid_V_5, i125 0)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreFlash2merger_V, i256 %tmp_10377) nounwind
  br label %._crit_edge606

._crit_edge606:                                   ; preds = %._crit_edge651, %20, %19, %._crit_edge639, %17, %16, %14, %._crit_edge626, %13, %12, %11, %._crit_edge623, %10, %8, %._crit_edge618, %6, %5, %4, %._crit_edge615, %3, %codeRepl
  %flashRemuxState_flag_s = phi i1 [ false, %codeRepl ], [ true, %4 ], [ true, %._crit_edge615 ], [ %flashRemuxState_flag_2, %3 ], [ true, %._crit_edge618 ], [ %flashRemuxState_flag_2, %6 ], [ %flashRemuxState_flag_2, %5 ], [ false, %8 ], [ true, %11 ], [ true, %._crit_edge623 ], [ false, %10 ], [ false, %12 ], [ %tmp_EOP_V_5, %._crit_edge626 ], [ false, %13 ], [ true, %._crit_edge639 ], [ false, %17 ], [ false, %16 ], [ false, %14 ], [ %tmp_EOP_V_7, %._crit_edge651 ], [ false, %20 ], [ false, %19 ]
  %flashRemuxState_new_1 = phi i3 [ undef, %codeRepl ], [ 2, %4 ], [ 2, %._crit_edge615 ], [ 1, %3 ], [ -3, %._crit_edge618 ], [ 1, %6 ], [ 1, %5 ], [ undef, %8 ], [ 0, %11 ], [ %storemerge3_cast, %._crit_edge623 ], [ undef, %10 ], [ 0, %12 ], [ 0, %._crit_edge626 ], [ 0, %13 ], [ %storemerge7, %._crit_edge639 ], [ undef, %17 ], [ undef, %16 ], [ undef, %14 ], [ 0, %._crit_edge651 ], [ 0, %20 ], [ 0, %19 ]
  %flashRmKeyLength_flag_s = phi i1 [ false, %codeRepl ], [ %flashRemuxState_flag_2, %4 ], [ true, %._crit_edge615 ], [ %flashRemuxState_flag_2, %3 ], [ %flashRmKeyLength_flag_5, %._crit_edge618 ], [ %flashRemuxState_flag_2, %6 ], [ %flashRemuxState_flag_2, %5 ], [ false, %8 ], [ false, %11 ], [ true, %._crit_edge623 ], [ false, %10 ], [ false, %12 ], [ true, %._crit_edge626 ], [ false, %13 ], [ %tmp_keyValid_V, %._crit_edge639 ], [ false, %17 ], [ false, %16 ], [ false, %14 ], [ %tmp_keyValid_V_5, %._crit_edge651 ], [ false, %20 ], [ false, %19 ]
  %flashRmKeyLength_new_s = phi i8 [ undef, %codeRepl ], [ 0, %4 ], [ %storemerge8, %._crit_edge615 ], [ %flashRmKeyLength_loc_2, %3 ], [ %flashRmKeyLength_new_5, %._crit_edge618 ], [ %flashRmKeyLength_loc_2, %6 ], [ %flashRmKeyLength_loc_2, %5 ], [ undef, %8 ], [ undef, %11 ], [ %storemerge2, %._crit_edge623 ], [ undef, %10 ], [ undef, %12 ], [ %storemerge1, %._crit_edge626 ], [ undef, %13 ], [ %flashRmKeyLength_load_1, %._crit_edge639 ], [ undef, %17 ], [ undef, %16 ], [ undef, %14 ], [ %flashRmKeyLength_load_s, %._crit_edge651 ], [ undef, %20 ], [ undef, %19 ]
  br i1 %flashRmKeyLength_flag_s, label %mergeST553, label %._crit_edge606.new554

mergeST:                                          ; preds = %._crit_edge606.new554
  store i3 %flashRemuxState_new_1, i3* @flashRemuxState, align 1
  br label %._crit_edge606.new

._crit_edge606.new:                               ; preds = %._crit_edge606.new554, %mergeST
  ret void

mergeST553:                                       ; preds = %._crit_edge606
  store i8 %flashRmKeyLength_new_s, i8* @flashRmKeyLength, align 1
  br label %._crit_edge606.new554

._crit_edge606.new554:                            ; preds = %mergeST553, %._crit_edge606
  br i1 %flashRemuxState_flag_s, label %mergeST, label %._crit_edge606.new
}

define internal fastcc void @memcachedPipeline_flashReceiveNoFilter(i64* %memRdData_V_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i64* %memRdData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i64* @flashGetPath2remux_V_V, [8 x i8]* @str1390, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1391, [1 x i8]* @str1391, [8 x i8]* @str1390)
  call void (...)* @_ssdm_op_SpecInterface(i16* @flash_Disp2rec_V_V, [8 x i8]* @str1374, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1375, [1 x i8]* @str1375, [8 x i8]* @str1374)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str191) nounwind
  %flashGetState_load = load i1* @flashGetState, align 1
  %getValueLength_V_load = load i16* @getValueLength_V, align 2
  br i1 %flashGetState_load, label %3, label %0

; <label>:0                                       ; preds = %codeRepl
  %tmp_17 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i16P(i16* @flash_Disp2rec_V_V, i32 1)
  br i1 %tmp_17, label %1, label %._crit_edge56

; <label>:1                                       ; preds = %0
  %tmp_18 = call i1 @_ssdm_op_NbReadReq.axis.i64P(i64* %memRdData_V_V, i32 1)
  br i1 %tmp_18, label %2, label %._crit_edge56

; <label>:2                                       ; preds = %1
  %tmp_V_11 = call i16 @_ssdm_op_Read.ap_fifo.volatile.i16P(i16* @flash_Disp2rec_V_V)
  %tmp_V_12 = call i64 @_ssdm_op_Read.axis.volatile.i64P(i64* %memRdData_V_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @flashGetPath2remux_V_V, i64 %tmp_V_12)
  %tmp_42 = add i16 %tmp_V_11, -8
  store i16 %tmp_42, i16* @getValueLength_V, align 2
  %getCounter_load = load i8* @getCounter, align 1
  %tmp_43 = add i8 %getCounter_load, 1
  store i8 %tmp_43, i8* @getCounter, align 1
  store i1 true, i1* @flashGetState, align 1
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %2, %1, %0
  br label %._crit_edge55

; <label>:3                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i64P(i64* %memRdData_V_V, i32 1)
  br i1 %tmp, label %._crit_edge59, label %._crit_edge58

._crit_edge59:                                    ; preds = %3
  %tmp_V = call i64 @_ssdm_op_Read.axis.volatile.i64P(i64* %memRdData_V_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @flashGetPath2remux_V_V, i64 %tmp_V)
  %tmp_56 = call i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16 %getValueLength_V_load, i32 3, i32 15)
  %icmp = icmp ne i13 %tmp_56, 0
  %tmp_s = add i16 %getValueLength_V_load, -8
  %storemerge = select i1 %icmp, i16 %tmp_s, i16 0
  store i16 %storemerge, i16* @getValueLength_V, align 2
  %tmp_41 = icmp eq i16 %storemerge, 0
  br i1 %tmp_41, label %4, label %._crit_edge60

; <label>:4                                       ; preds = %._crit_edge59
  store i1 false, i1* @flashGetState, align 1
  store i8 0, i8* @getCounter, align 1
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %4, %._crit_edge59
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge60, %3
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %._crit_edge58, %._crit_edge56
  ret void
}

define internal fastcc void @memcachedPipeline_accessControl() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1530, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1531, [1 x i8]* @str1531, [8 x i8]* @str1530) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1526, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1527, [1 x i8]* @str1527, [8 x i8]* @str1526) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1522, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1523, [1 x i8]* @str1523, [8 x i8]* @str1522) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1518, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1519, [1 x i8]* @str1519, [8 x i8]* @str1518) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1514, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1515, [1 x i8]* @str1515, [8 x i8]* @str1514) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1510, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1511, [1 x i8]* @str1511, [8 x i8]* @str1510) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1506, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1507, [1 x i8]* @str1507, [8 x i8]* @str1506) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* @filterPopGet_V_V, [8 x i8]* @str1502, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1503, [1 x i8]* @str1503, [8 x i8]* @str1502)
  call void (...)* @_ssdm_op_SpecInterface(i1* @filterPopSet_V_V, [8 x i8]* @str1498, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1499, [1 x i8]* @str1499, [8 x i8]* @str1498)
  call void (...)* @_ssdm_op_SpecInterface(i2* @filterSeq_V_V, [8 x i8]* @str1434, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1435, [1 x i8]* @str1435, [8 x i8]* @str1434)
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1314, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1315, [1 x i8]* @str1315, [8 x i8]* @str1314) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1310, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1311, [1 x i8]* @str1311, [8 x i8]* @str1310) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1306, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1307, [1 x i8]* @str1307, [8 x i8]* @str1306) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1302, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1303, [1 x i8]* @str1303, [8 x i8]* @str1302) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1298, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1299, [1 x i8]* @str1299, [8 x i8]* @str1298) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1294, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1295, [1 x i8]* @str1295, [8 x i8]* @str1294) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1290, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1291, [1 x i8]* @str1291, [8 x i8]* @str1290) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str127, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1128, [1 x i8]* @p_str1128, [1 x i8]* @p_str1128) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1128) nounwind
  %accState_load = load i3* @accState, align 1
  %streamToPop_V_load = load i2* @streamToPop_V, align 1
  %pushWord_load = load i32* @pushWord_address_V, align 4
  %pushWord_operation_V_load = load i8* @pushWord_operation_V, align 1
  %accessCtrl_filterEntries_statu = load i1* @accessCtrl_filterEntries_statu, align 1
  %accessCtrl_filterEntries_load = load i32* @accessCtrl_filterEntries_addre, align 4
  %accessCtrl_filterEntries_opera = load i8* @accessCtrl_filterEntries_opera, align 1
  %accessCtrl_filterEntries_statu_1 = load i1* @accessCtrl_filterEntries_statu_1, align 1
  %accessCtrl_filterEntries_load_1 = load i32* @accessCtrl_filterEntries_addre_1, align 4
  %accessCtrl_filterEntries_opera_1 = load i8* @accessCtrl_filterEntries_opera_1, align 1
  %accessCtrl_filterEntries_statu_2 = load i1* @accessCtrl_filterEntries_statu_2, align 1
  %accessCtrl_filterEntries_load_2 = load i32* @accessCtrl_filterEntries_addre_2, align 4
  %accessCtrl_filterEntries_opera_2 = load i8* @accessCtrl_filterEntries_opera_2, align 1
  %accessCtrl_filterEntries_statu_3 = load i1* @accessCtrl_filterEntries_statu_3, align 1
  %accessCtrl_filterEntries_load_3 = load i32* @accessCtrl_filterEntries_addre_3, align 4
  %accessCtrl_filterEntries_opera_3 = load i8* @accessCtrl_filterEntries_opera_3, align 1
  %accessCtrl_filterEntries_statu_4 = load i1* @accessCtrl_filterEntries_statu_4, align 1
  %accessCtrl_filterEntries_load_4 = load i32* @accessCtrl_filterEntries_addre_4, align 4
  %accessCtrl_filterEntries_opera_4 = load i8* @accessCtrl_filterEntries_opera_4, align 1
  %accessCtrl_filterEntries_statu_5 = load i1* @accessCtrl_filterEntries_statu_5, align 1
  %accessCtrl_filterEntries_load_5 = load i32* @accessCtrl_filterEntries_addre_5, align 4
  %accessCtrl_filterEntries_opera_5 = load i8* @accessCtrl_filterEntries_opera_5, align 1
  %accessCtrl_filterEntries_statu_6 = load i1* @accessCtrl_filterEntries_statu_6, align 1
  %accessCtrl_filterEntries_load_6 = load i32* @accessCtrl_filterEntries_addre_6, align 4
  %accessCtrl_filterEntries_opera_6 = load i8* @accessCtrl_filterEntries_opera_6, align 1
  %accessCtrl_filterEntries_statu_7 = load i1* @accessCtrl_filterEntries_statu_7, align 1
  %accessCtrl_filterEntries_load_7 = load i32* @accessCtrl_filterEntries_addre_7, align 4
  %accessCtrl_filterEntries_opera_7 = load i8* @accessCtrl_filterEntries_opera_7, align 1
  %accessCtrl_level_load = load i8* @accessCtrl_level, align 1
  %tmp_63 = trunc i8 %accessCtrl_level_load to i4
  %accessCtrl_rdPtr_load = load i8* @accessCtrl_rdPtr, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([14 x i8]* @str1432, i32 1, [1 x i8]* @str1433, [1 x i8]* @str1433, i32 16, i32 16, i2* @filterSeq_V_V, i2* @filterSeq_V_V) nounwind
  %tmp_27 = icmp eq i8 %pushWord_operation_V_load, 0
  %tmp_28 = icmp eq i2 %streamToPop_V_load, 1
  %tmp_29 = icmp eq i2 %streamToPop_V_load, 0
  switch i3 %accState_load, label %._crit_edge278 [
    i3 0, label %0
    i3 1, label %_ifconv
    i3 2, label %12
    i3 -1, label %13
    i3 -3, label %20
    i3 -2, label %22
    i3 -4, label %38
    i3 3, label %44
  ]

; <label>:0                                       ; preds = %codeRepl
  br i1 %tmp_28, label %1, label %._crit_edge279

; <label>:1                                       ; preds = %0
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i1P(i1* @filterPopSet_V_V, i32 1) nounwind
  br i1 %tmp, label %2, label %._crit_edge279

; <label>:2                                       ; preds = %1
  store i3 3, i3* @accState, align 1
  br label %11

._crit_edge279:                                   ; preds = %1, %0
  br i1 %tmp_29, label %3, label %._crit_edge281

; <label>:3                                       ; preds = %._crit_edge279
  %tmp_21 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i1P(i1* @filterPopGet_V_V, i32 1) nounwind
  br i1 %tmp_21, label %4, label %._crit_edge281

; <label>:4                                       ; preds = %3
  store i3 3, i3* @accState, align 1
  br label %10

._crit_edge281:                                   ; preds = %3, %._crit_edge279
  %tmp_22 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @splitter2valueStoreDram_V, i32 1) nounwind
  br i1 %tmp_22, label %5, label %._crit_edge283

; <label>:5                                       ; preds = %._crit_edge281
  %tmp_24 = call i1 @_ssdm_op_NbWriteReq.ap_fifo.i2P(i2* @filterSeq_V_V, i32 1) nounwind
  br i1 %tmp_24, label %6, label %._crit_edge283

; <label>:6                                       ; preds = %5
  %tmp188 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @splitter2valueStoreDram_V) nounwind
  %p_Val2_s = trunc i256 %tmp188 to i124
  store i124 %p_Val2_s, i124* @inputWord_metadata_V, align 8
  %tmp_SOP_V_1 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp188, i32 124)
  store i1 %tmp_SOP_V_1, i1* @inputWord_SOP_V, align 8
  %tmp_keyValid_V_7 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp188, i32 125)
  store i1 %tmp_keyValid_V_7, i1* @inputWord_keyValid_V, align 1
  %tmp_valueValid_V_2 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp188, i32 126)
  store i1 %tmp_valueValid_V_2, i1* @inputWord_valueValid_V, align 2
  %tmp_EOP_V_8 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp188, i32 127)
  store i1 %tmp_EOP_V_8, i1* @inputWord_EOP_V, align 1
  %tmp_value_V_3 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp188, i32 128, i32 191)
  store i64 %tmp_value_V_3, i64* @inputWord_value_V, align 8
  %tmp_key_V_6 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp188, i32 192, i32 255)
  store i64 %tmp_key_V_6, i64* @inputWord_key_V, align 8
  %tmp_76 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp188, i32 112)
  br i1 %tmp_76, label %._crit_edge285, label %7

; <label>:7                                       ; preds = %6
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256 %tmp188, i32 104, i32 111)
  %tmp_79 = icmp eq i8 %p_Result_s, 8
  %tmp_80 = icmp eq i8 %p_Result_s, 4
  %tmp_81 = or i1 %tmp_80, %tmp_79
  br i1 %tmp_81, label %._crit_edge285, label %8

._crit_edge285:                                   ; preds = %7, %6
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @accCtrl2demux_V, i256 %tmp188) nounwind
  br label %9

; <label>:8                                       ; preds = %7
  %p_Result_6 = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %tmp188, i32 72, i32 103)
  store i32 %p_Result_6, i32* @pushWord_address_V, align 4
  store i8 %p_Result_s, i8* @pushWord_operation_V, align 4
  %tmp_82 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp188, i32 104)
  %tmp_V_16 = zext i1 %tmp_82 to i2
  call void @_ssdm_op_Write.ap_fifo.volatile.i2P(i2* @filterSeq_V_V, i2 %tmp_V_16) nounwind
  br label %9

; <label>:9                                       ; preds = %8, %._crit_edge285
  %storemerge5 = phi i3 [ 1, %8 ], [ -3, %._crit_edge285 ]
  store i3 %storemerge5, i3* @accState, align 1
  br label %._crit_edge283

._crit_edge283:                                   ; preds = %9, %5, %._crit_edge281
  br label %10

; <label>:10                                      ; preds = %._crit_edge283, %4
  br label %11

; <label>:11                                      ; preds = %10, %2
  br label %._crit_edge278

_ifconv:                                          ; preds = %codeRepl
  %notlhs1 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load
  %tmp_s = icmp eq i8 %accessCtrl_filterEntries_opera, 1
  %notlhs2 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_1
  %tmp_121_1 = icmp eq i8 %accessCtrl_filterEntries_opera_1, 1
  %notlhs3 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_2
  %tmp_121_2 = icmp eq i8 %accessCtrl_filterEntries_opera_2, 1
  %notlhs5 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_3
  %tmp_121_3 = icmp eq i8 %accessCtrl_filterEntries_opera_3, 1
  %notlhs7 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_4
  %tmp_121_4 = icmp eq i8 %accessCtrl_filterEntries_opera_4, 1
  %notlhs9 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_5
  %tmp_121_5 = icmp eq i8 %accessCtrl_filterEntries_opera_5, 1
  %notlhs11 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_6
  %tmp_121_6 = icmp eq i8 %accessCtrl_filterEntries_opera_6, 1
  %notlhs13 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_7
  %tmp_121_7 = icmp eq i8 %accessCtrl_filterEntries_opera_7, 1
  %tmp_44 = icmp eq i8 %accessCtrl_level_load, 8
  %tmp_45 = icmp eq i2 %streamToPop_V_load, -2
  %storemerge6 = select i1 %tmp_45, i3 2, i3 -2
  %tmp17 = and i1 %accessCtrl_filterEntries_statu, %tmp_27
  %tmp18 = and i1 %notlhs1, %tmp_s
  %sel_tmp = and i1 %tmp18, %tmp17
  %tmp19 = and i1 %accessCtrl_filterEntries_statu_1, %tmp_27
  %tmp20 = and i1 %notlhs2, %tmp_121_1
  %sel_tmp1 = and i1 %tmp20, %tmp19
  %tmp21 = and i1 %accessCtrl_filterEntries_statu_2, %tmp_27
  %tmp22 = and i1 %notlhs3, %tmp_121_2
  %sel_tmp3 = and i1 %tmp22, %tmp21
  %tmp23 = and i1 %accessCtrl_filterEntries_statu_3, %tmp_27
  %tmp24 = and i1 %notlhs5, %tmp_121_3
  %sel_tmp5 = and i1 %tmp24, %tmp23
  %tmp25 = and i1 %accessCtrl_filterEntries_statu_4, %tmp_27
  %tmp26 = and i1 %notlhs7, %tmp_121_4
  %sel_tmp7 = and i1 %tmp26, %tmp25
  %tmp27 = and i1 %accessCtrl_filterEntries_statu_5, %tmp_27
  %tmp28 = and i1 %notlhs9, %tmp_121_5
  %sel_tmp9 = and i1 %tmp28, %tmp27
  %tmp29 = and i1 %accessCtrl_filterEntries_statu_6, %tmp_27
  %tmp30 = and i1 %notlhs11, %tmp_121_6
  %sel_tmp2 = and i1 %tmp30, %tmp29
  %tmp31 = and i1 %accessCtrl_filterEntries_statu_7, %tmp_27
  %tmp32 = and i1 %notlhs13, %tmp_121_7
  %sel_tmp4 = and i1 %tmp32, %tmp31
  %tmp34 = or i1 %sel_tmp, %sel_tmp1
  %tmp35 = or i1 %sel_tmp3, %sel_tmp5
  %tmp33 = or i1 %tmp35, %tmp34
  %tmp37 = or i1 %sel_tmp7, %sel_tmp9
  %tmp39 = or i1 %sel_tmp4, %tmp_44
  %tmp38 = or i1 %tmp39, %sel_tmp2
  %tmp36 = or i1 %tmp38, %tmp37
  %sel_tmp6 = or i1 %tmp36, %tmp33
  %storemerge7 = select i1 %sel_tmp6, i3 %storemerge6, i3 -1
  store i3 %storemerge7, i3* @accState, align 1
  br label %._crit_edge278

; <label>:12                                      ; preds = %codeRepl
  %tmp_V = call i2 @_ssdm_op_Read.ap_fifo.volatile.i2P(i2* @filterSeq_V_V) nounwind
  store i2 %tmp_V, i2* @streamToPop_V, align 1
  store i3 -2, i3* @accState, align 1
  br label %._crit_edge278

; <label>:13                                      ; preds = %codeRepl
  %tmp_46 = icmp eq i2 %streamToPop_V_load, -2
  br i1 %tmp_46, label %14, label %._crit_edge291

; <label>:14                                      ; preds = %13
  %tmp_19 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i2P(i2* @filterSeq_V_V, i32 1) nounwind
  br i1 %tmp_19, label %15, label %._crit_edge291

; <label>:15                                      ; preds = %14
  %tmp_V_13 = call i2 @_ssdm_op_Read.ap_fifo.volatile.i2P(i2* @filterSeq_V_V) nounwind
  store i2 %tmp_V_13, i2* @streamToPop_V, align 1
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %15, %14, %13
  %tmp_69 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %accessCtrl_level_load, i32 3, i32 7)
  %icmp = icmp eq i5 %tmp_69, 0
  br i1 %icmp, label %16, label %push.exit

; <label>:16                                      ; preds = %._crit_edge291
  %accessCtrl_wrPtr_load = load i8* @accessCtrl_wrPtr, align 4
  %tmp_70 = trunc i8 %accessCtrl_wrPtr_load to i3
  switch i3 %tmp_70, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ]

; <label>:17                                      ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  switch i3 %tmp_70, label %branch31 [
    i3 0, label %branch24
    i3 1, label %branch25
    i3 2, label %branch26
    i3 3, label %branch27
    i3 -4, label %branch28
    i3 -3, label %branch29
    i3 -2, label %branch30
  ]

; <label>:18                                      ; preds = %branch31, %branch30, %branch29, %branch28, %branch27, %branch26, %branch25, %branch24
  switch i3 %tmp_70, label %branch39 [
    i3 0, label %branch32
    i3 1, label %branch33
    i3 2, label %branch34
    i3 3, label %branch35
    i3 -4, label %branch36
    i3 -3, label %branch37
    i3 -2, label %branch38
  ]

; <label>:19                                      ; preds = %branch39, %branch38, %branch37, %branch36, %branch35, %branch34, %branch33, %branch32
  %tmp_54 = icmp eq i8 %accessCtrl_wrPtr_load, 7
  %tmp_55 = add i8 %accessCtrl_wrPtr_load, 1
  %p_tmp_2 = select i1 %tmp_54, i8 0, i8 %tmp_55
  store i8 %p_tmp_2, i8* @accessCtrl_wrPtr, align 4
  %tmp_56 = add i4 %tmp_63, 1
  %tmp_79_cast = zext i4 %tmp_56 to i8
  store i8 %tmp_79_cast, i8* @accessCtrl_level, align 2
  br label %push.exit

push.exit:                                        ; preds = %19, %._crit_edge291
  %tmp_metadata_V_6 = load i124* @inputWord_metadata_V, align 8
  %tmp_SOP_V_2 = load i1* @inputWord_SOP_V, align 8
  %tmp_keyValid_V_8 = load i1* @inputWord_keyValid_V, align 1
  %tmp_valueValid_V_3 = load i1* @inputWord_valueValid_V, align 2
  %tmp_EOP_V_9 = load i1* @inputWord_EOP_V, align 1
  %tmp_value_V_4 = load i64* @inputWord_value_V, align 8
  %tmp_key_V_7 = load i64* @inputWord_key_V, align 8
  %tmp_2 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i1.i124(i64 %tmp_key_V_7, i64 %tmp_value_V_4, i1 %tmp_EOP_V_9, i1 %tmp_valueValid_V_3, i1 %tmp_keyValid_V_8, i1 %tmp_SOP_V_2, i124 %tmp_metadata_V_6)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @accCtrl2demux_V, i256 %tmp_2) nounwind
  store i3 -3, i3* @accState, align 1
  br label %._crit_edge278

; <label>:20                                      ; preds = %codeRepl
  %tmp_3 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @splitter2valueStoreDram_V) nounwind
  %tmp_metadata_V = trunc i256 %tmp_3 to i124
  store i124 %tmp_metadata_V, i124* @inputWord_metadata_V, align 8
  %tmp_SOP_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_3, i32 124)
  store i1 %tmp_SOP_V, i1* @inputWord_SOP_V, align 8
  %tmp_keyValid_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_3, i32 125)
  store i1 %tmp_keyValid_V, i1* @inputWord_keyValid_V, align 1
  %tmp_valueValid_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_3, i32 126)
  store i1 %tmp_valueValid_V, i1* @inputWord_valueValid_V, align 2
  %tmp_EOP_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_3, i32 127)
  store i1 %tmp_EOP_V, i1* @inputWord_EOP_V, align 1
  %tmp_value_V = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_3, i32 128, i32 191)
  store i64 %tmp_value_V, i64* @inputWord_value_V, align 8
  %tmp_key_V = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_3, i32 192, i32 255)
  store i64 %tmp_key_V, i64* @inputWord_key_V, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @accCtrl2demux_V, i256 %tmp_3) nounwind
  br i1 %tmp_EOP_V, label %21, label %._crit_edge293

; <label>:21                                      ; preds = %20
  store i3 0, i3* @accState, align 1
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %21, %20
  br label %._crit_edge278

; <label>:22                                      ; preds = %codeRepl
  br i1 %tmp_28, label %23, label %._crit_edge294

; <label>:23                                      ; preds = %22
  %tmp_20 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i1P(i1* @filterPopSet_V_V, i32 1) nounwind
  br i1 %tmp_20, label %24, label %._crit_edge294

; <label>:24                                      ; preds = %23
  store i3 -4, i3* @accState, align 1
  br label %37

._crit_edge294:                                   ; preds = %23, %22
  br i1 %tmp_29, label %25, label %._crit_edge296

; <label>:25                                      ; preds = %._crit_edge294
  %tmp_23 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i1P(i1* @filterPopGet_V_V, i32 1) nounwind
  br i1 %tmp_23, label %26, label %._crit_edge296

; <label>:26                                      ; preds = %25
  store i3 -4, i3* @accState, align 1
  br label %36

._crit_edge296:                                   ; preds = %25, %._crit_edge294
  br i1 %accessCtrl_filterEntries_statu, label %27, label %._crit_edge24.i317.0

; <label>:27                                      ; preds = %._crit_edge296
  %notlhs4 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load
  %tmp_47 = icmp eq i8 %accessCtrl_filterEntries_opera, 1
  %tmp40 = and i1 %notlhs4, %tmp_47
  %or_cond3 = and i1 %tmp40, %tmp_27
  br i1 %or_cond3, label %._crit_edge298.loopexit, label %._crit_edge24.i317.0

._crit_edge24.i317.0:                             ; preds = %27, %._crit_edge296
  br i1 %accessCtrl_filterEntries_statu_1, label %28, label %._crit_edge24.i317.1

; <label>:28                                      ; preds = %._crit_edge24.i317.0
  %notlhs6 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_1
  %tmp_132_1 = icmp eq i8 %accessCtrl_filterEntries_opera_1, 1
  %tmp41 = and i1 %notlhs6, %tmp_132_1
  %or_cond5 = and i1 %tmp41, %tmp_27
  br i1 %or_cond5, label %._crit_edge298.loopexit, label %._crit_edge24.i317.1

._crit_edge24.i317.1:                             ; preds = %28, %._crit_edge24.i317.0
  br i1 %accessCtrl_filterEntries_statu_2, label %29, label %._crit_edge24.i317.2

; <label>:29                                      ; preds = %._crit_edge24.i317.1
  %notlhs8 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_2
  %tmp_132_2 = icmp eq i8 %accessCtrl_filterEntries_opera_2, 1
  %tmp42 = and i1 %notlhs8, %tmp_132_2
  %or_cond7 = and i1 %tmp42, %tmp_27
  br i1 %or_cond7, label %._crit_edge298.loopexit, label %._crit_edge24.i317.2

._crit_edge24.i317.2:                             ; preds = %29, %._crit_edge24.i317.1
  br i1 %accessCtrl_filterEntries_statu_3, label %30, label %._crit_edge24.i317.3

; <label>:30                                      ; preds = %._crit_edge24.i317.2
  %notlhs10 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_3
  %tmp_132_3 = icmp eq i8 %accessCtrl_filterEntries_opera_3, 1
  %tmp43 = and i1 %notlhs10, %tmp_132_3
  %or_cond9 = and i1 %tmp43, %tmp_27
  br i1 %or_cond9, label %._crit_edge298.loopexit, label %._crit_edge24.i317.3

._crit_edge24.i317.3:                             ; preds = %30, %._crit_edge24.i317.2
  br i1 %accessCtrl_filterEntries_statu_4, label %31, label %._crit_edge24.i317.4

; <label>:31                                      ; preds = %._crit_edge24.i317.3
  %notlhs12 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_4
  %tmp_132_4 = icmp eq i8 %accessCtrl_filterEntries_opera_4, 1
  %tmp44 = and i1 %notlhs12, %tmp_132_4
  %or_cond = and i1 %tmp44, %tmp_27
  br i1 %or_cond, label %._crit_edge298.loopexit, label %._crit_edge24.i317.4

._crit_edge24.i317.4:                             ; preds = %31, %._crit_edge24.i317.3
  br i1 %accessCtrl_filterEntries_statu_5, label %32, label %._crit_edge24.i317.5

; <label>:32                                      ; preds = %._crit_edge24.i317.4
  %notlhs14 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_5
  %tmp_132_5 = icmp eq i8 %accessCtrl_filterEntries_opera_5, 1
  %tmp45 = and i1 %notlhs14, %tmp_132_5
  %or_cond1 = and i1 %tmp45, %tmp_27
  br i1 %or_cond1, label %._crit_edge298.loopexit, label %._crit_edge24.i317.5

._crit_edge24.i317.5:                             ; preds = %32, %._crit_edge24.i317.4
  br i1 %accessCtrl_filterEntries_statu_6, label %33, label %._crit_edge24.i317.6

; <label>:33                                      ; preds = %._crit_edge24.i317.5
  %notlhs15 = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_6
  %tmp_132_6 = icmp eq i8 %accessCtrl_filterEntries_opera_6, 1
  %tmp46 = and i1 %notlhs15, %tmp_132_6
  %or_cond2 = and i1 %tmp46, %tmp_27
  br i1 %or_cond2, label %._crit_edge298.loopexit, label %._crit_edge24.i317.6

._crit_edge24.i317.6:                             ; preds = %33, %._crit_edge24.i317.5
  br i1 %accessCtrl_filterEntries_statu_7, label %34, label %.critedge323

; <label>:34                                      ; preds = %._crit_edge24.i317.6
  %notlhs = icmp eq i32 %pushWord_load, %accessCtrl_filterEntries_load_7
  %tmp_132_7 = icmp eq i8 %accessCtrl_filterEntries_opera_7, 1
  %tmp47 = and i1 %notlhs, %tmp_132_7
  %or_cond4 = and i1 %tmp47, %tmp_27
  br i1 %or_cond4, label %._crit_edge298.loopexit, label %.critedge323

.critedge323:                                     ; preds = %34, %._crit_edge24.i317.6
  %tmp_57 = icmp eq i8 %accessCtrl_level_load, 8
  br i1 %tmp_57, label %._crit_edge298, label %35

; <label>:35                                      ; preds = %.critedge323
  store i3 -1, i3* @accState, align 1
  br label %._crit_edge298

._crit_edge298.loopexit:                          ; preds = %34, %33, %32, %31, %30, %29, %28, %27
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %._crit_edge298.loopexit, %35, %.critedge323
  br label %36

; <label>:36                                      ; preds = %._crit_edge298, %26
  br label %37

; <label>:37                                      ; preds = %36, %24
  br label %._crit_edge278

; <label>:38                                      ; preds = %codeRepl
  br i1 %tmp_28, label %39, label %40

; <label>:39                                      ; preds = %38
  %tmp_V_0 = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* @filterPopSet_V_V) nounwind
  br label %42

; <label>:40                                      ; preds = %38
  br i1 %tmp_29, label %41, label %._crit_edge300

; <label>:41                                      ; preds = %40
  %tmp_V_22_0 = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* @filterPopGet_V_V) nounwind
  br label %._crit_edge300

._crit_edge300:                                   ; preds = %41, %40
  br label %42

; <label>:42                                      ; preds = %._crit_edge300, %39
  %tmp_25 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i2P(i2* @filterSeq_V_V, i32 1) nounwind
  br i1 %tmp_25, label %43, label %._crit_edge301

; <label>:43                                      ; preds = %42
  %tmp_V_14 = call i2 @_ssdm_op_Read.ap_fifo.volatile.i2P(i2* @filterSeq_V_V) nounwind
  br label %._crit_edge301

._crit_edge301:                                   ; preds = %43, %42
  %storemerge4 = phi i2 [ %tmp_V_14, %43 ], [ -2, %42 ]
  store i2 %storemerge4, i2* @streamToPop_V, align 1
  %tmp_77 = trunc i8 %accessCtrl_rdPtr_load to i3
  switch i3 %tmp_77, label %branch15 [
    i3 0, label %branch8
    i3 1, label %branch9
    i3 2, label %branch10
    i3 3, label %branch11
    i3 -4, label %branch12
    i3 -3, label %branch13
    i3 -2, label %branch14
  ]

._crit_edge301316:                                ; preds = %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8
  switch i3 %tmp_77, label %branch47 [
    i3 0, label %branch40
    i3 1, label %branch41
    i3 2, label %branch42
    i3 3, label %branch43
    i3 -4, label %branch44
    i3 -3, label %branch45
    i3 -2, label %branch46
  ]

._crit_edge301316353:                             ; preds = %branch47, %branch46, %branch45, %branch44, %branch43, %branch42, %branch41, %branch40
  %tmp_48 = icmp eq i8 %accessCtrl_rdPtr_load, 7
  %tmp_49 = add i8 %accessCtrl_rdPtr_load, 1
  %p_tmp_s = select i1 %tmp_48, i8 0, i8 %tmp_49
  store i8 %p_tmp_s, i8* @accessCtrl_rdPtr, align 1
  %tmp_50 = add i8 %accessCtrl_level_load, -1
  store i8 %tmp_50, i8* @accessCtrl_level, align 2
  store i3 -2, i3* @accState, align 1
  br label %._crit_edge278

; <label>:44                                      ; preds = %codeRepl
  br i1 %tmp_28, label %45, label %46

; <label>:45                                      ; preds = %44
  %tmp_V_20_0 = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* @filterPopSet_V_V) nounwind
  br label %48

; <label>:46                                      ; preds = %44
  br i1 %tmp_29, label %47, label %._crit_edge302

; <label>:47                                      ; preds = %46
  %tmp_V_23_0 = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* @filterPopGet_V_V) nounwind
  br label %._crit_edge302

._crit_edge302:                                   ; preds = %47, %46
  br label %48

; <label>:48                                      ; preds = %._crit_edge302, %45
  %tmp_26 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i2P(i2* @filterSeq_V_V, i32 1) nounwind
  br i1 %tmp_26, label %49, label %._crit_edge303

; <label>:49                                      ; preds = %48
  %tmp_V_15 = call i2 @_ssdm_op_Read.ap_fifo.volatile.i2P(i2* @filterSeq_V_V) nounwind
  br label %._crit_edge303

._crit_edge303:                                   ; preds = %49, %48
  %storemerge = phi i2 [ %tmp_V_15, %49 ], [ -2, %48 ]
  store i2 %storemerge, i2* @streamToPop_V, align 1
  %tmp_78 = trunc i8 %accessCtrl_rdPtr_load to i3
  switch i3 %tmp_78, label %branch23 [
    i3 0, label %branch16
    i3 1, label %branch17
    i3 2, label %branch18
    i3 3, label %branch19
    i3 -4, label %branch20
    i3 -3, label %branch21
    i3 -2, label %branch22
  ]

._crit_edge303325:                                ; preds = %branch23, %branch22, %branch21, %branch20, %branch19, %branch18, %branch17, %branch16
  switch i3 %tmp_78, label %branch55 [
    i3 0, label %branch48
    i3 1, label %branch49
    i3 2, label %branch50
    i3 3, label %branch51
    i3 -4, label %branch52
    i3 -3, label %branch53
    i3 -2, label %branch54
  ]

._crit_edge303325363:                             ; preds = %branch55, %branch54, %branch53, %branch52, %branch51, %branch50, %branch49, %branch48
  %tmp_51 = icmp eq i8 %accessCtrl_rdPtr_load, 7
  %tmp_52 = add i8 %accessCtrl_rdPtr_load, 1
  %p_tmp_1 = select i1 %tmp_51, i8 0, i8 %tmp_52
  store i8 %p_tmp_1, i8* @accessCtrl_rdPtr, align 1
  %tmp_53 = add i8 %accessCtrl_level_load, -1
  store i8 %tmp_53, i8* @accessCtrl_level, align 2
  store i3 0, i3* @accState, align 1
  br label %._crit_edge278

._crit_edge278:                                   ; preds = %._crit_edge303325363, %._crit_edge301316353, %37, %._crit_edge293, %push.exit, %12, %_ifconv, %11, %codeRepl
  ret void

branch0:                                          ; preds = %16
  store i32 %pushWord_load, i32* @accessCtrl_filterEntries_addre, align 4
  br label %17

branch1:                                          ; preds = %16
  store i32 %pushWord_load, i32* @accessCtrl_filterEntries_addre_1, align 4
  br label %17

branch2:                                          ; preds = %16
  store i32 %pushWord_load, i32* @accessCtrl_filterEntries_addre_2, align 4
  br label %17

branch3:                                          ; preds = %16
  store i32 %pushWord_load, i32* @accessCtrl_filterEntries_addre_3, align 4
  br label %17

branch4:                                          ; preds = %16
  store i32 %pushWord_load, i32* @accessCtrl_filterEntries_addre_4, align 4
  br label %17

branch5:                                          ; preds = %16
  store i32 %pushWord_load, i32* @accessCtrl_filterEntries_addre_5, align 4
  br label %17

branch6:                                          ; preds = %16
  store i32 %pushWord_load, i32* @accessCtrl_filterEntries_addre_6, align 4
  br label %17

branch7:                                          ; preds = %16
  store i32 %pushWord_load, i32* @accessCtrl_filterEntries_addre_7, align 4
  br label %17

branch8:                                          ; preds = %._crit_edge301
  store i32 0, i32* @accessCtrl_filterEntries_addre, align 4
  br label %._crit_edge301316

branch9:                                          ; preds = %._crit_edge301
  store i32 0, i32* @accessCtrl_filterEntries_addre_1, align 4
  br label %._crit_edge301316

branch10:                                         ; preds = %._crit_edge301
  store i32 0, i32* @accessCtrl_filterEntries_addre_2, align 4
  br label %._crit_edge301316

branch11:                                         ; preds = %._crit_edge301
  store i32 0, i32* @accessCtrl_filterEntries_addre_3, align 4
  br label %._crit_edge301316

branch12:                                         ; preds = %._crit_edge301
  store i32 0, i32* @accessCtrl_filterEntries_addre_4, align 4
  br label %._crit_edge301316

branch13:                                         ; preds = %._crit_edge301
  store i32 0, i32* @accessCtrl_filterEntries_addre_5, align 4
  br label %._crit_edge301316

branch14:                                         ; preds = %._crit_edge301
  store i32 0, i32* @accessCtrl_filterEntries_addre_6, align 4
  br label %._crit_edge301316

branch15:                                         ; preds = %._crit_edge301
  store i32 0, i32* @accessCtrl_filterEntries_addre_7, align 4
  br label %._crit_edge301316

branch16:                                         ; preds = %._crit_edge303
  store i32 0, i32* @accessCtrl_filterEntries_addre, align 4
  br label %._crit_edge303325

branch17:                                         ; preds = %._crit_edge303
  store i32 0, i32* @accessCtrl_filterEntries_addre_1, align 4
  br label %._crit_edge303325

branch18:                                         ; preds = %._crit_edge303
  store i32 0, i32* @accessCtrl_filterEntries_addre_2, align 4
  br label %._crit_edge303325

branch19:                                         ; preds = %._crit_edge303
  store i32 0, i32* @accessCtrl_filterEntries_addre_3, align 4
  br label %._crit_edge303325

branch20:                                         ; preds = %._crit_edge303
  store i32 0, i32* @accessCtrl_filterEntries_addre_4, align 4
  br label %._crit_edge303325

branch21:                                         ; preds = %._crit_edge303
  store i32 0, i32* @accessCtrl_filterEntries_addre_5, align 4
  br label %._crit_edge303325

branch22:                                         ; preds = %._crit_edge303
  store i32 0, i32* @accessCtrl_filterEntries_addre_6, align 4
  br label %._crit_edge303325

branch23:                                         ; preds = %._crit_edge303
  store i32 0, i32* @accessCtrl_filterEntries_addre_7, align 4
  br label %._crit_edge303325

branch24:                                         ; preds = %17
  store i8 %pushWord_operation_V_load, i8* @accessCtrl_filterEntries_opera, align 4
  br label %18

branch25:                                         ; preds = %17
  store i8 %pushWord_operation_V_load, i8* @accessCtrl_filterEntries_opera_1, align 4
  br label %18

branch26:                                         ; preds = %17
  store i8 %pushWord_operation_V_load, i8* @accessCtrl_filterEntries_opera_2, align 4
  br label %18

branch27:                                         ; preds = %17
  store i8 %pushWord_operation_V_load, i8* @accessCtrl_filterEntries_opera_3, align 4
  br label %18

branch28:                                         ; preds = %17
  store i8 %pushWord_operation_V_load, i8* @accessCtrl_filterEntries_opera_4, align 4
  br label %18

branch29:                                         ; preds = %17
  store i8 %pushWord_operation_V_load, i8* @accessCtrl_filterEntries_opera_5, align 4
  br label %18

branch30:                                         ; preds = %17
  store i8 %pushWord_operation_V_load, i8* @accessCtrl_filterEntries_opera_6, align 4
  br label %18

branch31:                                         ; preds = %17
  store i8 %pushWord_operation_V_load, i8* @accessCtrl_filterEntries_opera_7, align 4
  br label %18

branch32:                                         ; preds = %18
  store i1 true, i1* @accessCtrl_filterEntries_statu, align 1
  br label %19

branch33:                                         ; preds = %18
  store i1 true, i1* @accessCtrl_filterEntries_statu_1, align 1
  br label %19

branch34:                                         ; preds = %18
  store i1 true, i1* @accessCtrl_filterEntries_statu_2, align 1
  br label %19

branch35:                                         ; preds = %18
  store i1 true, i1* @accessCtrl_filterEntries_statu_3, align 1
  br label %19

branch36:                                         ; preds = %18
  store i1 true, i1* @accessCtrl_filterEntries_statu_4, align 1
  br label %19

branch37:                                         ; preds = %18
  store i1 true, i1* @accessCtrl_filterEntries_statu_5, align 1
  br label %19

branch38:                                         ; preds = %18
  store i1 true, i1* @accessCtrl_filterEntries_statu_6, align 1
  br label %19

branch39:                                         ; preds = %18
  store i1 true, i1* @accessCtrl_filterEntries_statu_7, align 1
  br label %19

branch40:                                         ; preds = %._crit_edge301316
  store i1 false, i1* @accessCtrl_filterEntries_statu, align 1
  br label %._crit_edge301316353

branch41:                                         ; preds = %._crit_edge301316
  store i1 false, i1* @accessCtrl_filterEntries_statu_1, align 1
  br label %._crit_edge301316353

branch42:                                         ; preds = %._crit_edge301316
  store i1 false, i1* @accessCtrl_filterEntries_statu_2, align 1
  br label %._crit_edge301316353

branch43:                                         ; preds = %._crit_edge301316
  store i1 false, i1* @accessCtrl_filterEntries_statu_3, align 1
  br label %._crit_edge301316353

branch44:                                         ; preds = %._crit_edge301316
  store i1 false, i1* @accessCtrl_filterEntries_statu_4, align 1
  br label %._crit_edge301316353

branch45:                                         ; preds = %._crit_edge301316
  store i1 false, i1* @accessCtrl_filterEntries_statu_5, align 1
  br label %._crit_edge301316353

branch46:                                         ; preds = %._crit_edge301316
  store i1 false, i1* @accessCtrl_filterEntries_statu_6, align 1
  br label %._crit_edge301316353

branch47:                                         ; preds = %._crit_edge301316
  store i1 false, i1* @accessCtrl_filterEntries_statu_7, align 1
  br label %._crit_edge301316353

branch48:                                         ; preds = %._crit_edge303325
  store i1 false, i1* @accessCtrl_filterEntries_statu, align 1
  br label %._crit_edge303325363

branch49:                                         ; preds = %._crit_edge303325
  store i1 false, i1* @accessCtrl_filterEntries_statu_1, align 1
  br label %._crit_edge303325363

branch50:                                         ; preds = %._crit_edge303325
  store i1 false, i1* @accessCtrl_filterEntries_statu_2, align 1
  br label %._crit_edge303325363

branch51:                                         ; preds = %._crit_edge303325
  store i1 false, i1* @accessCtrl_filterEntries_statu_3, align 1
  br label %._crit_edge303325363

branch52:                                         ; preds = %._crit_edge303325
  store i1 false, i1* @accessCtrl_filterEntries_statu_4, align 1
  br label %._crit_edge303325363

branch53:                                         ; preds = %._crit_edge303325
  store i1 false, i1* @accessCtrl_filterEntries_statu_5, align 1
  br label %._crit_edge303325363

branch54:                                         ; preds = %._crit_edge303325
  store i1 false, i1* @accessCtrl_filterEntries_statu_6, align 1
  br label %._crit_edge303325363

branch55:                                         ; preds = %._crit_edge303325
  store i1 false, i1* @accessCtrl_filterEntries_statu_7, align 1
  br label %._crit_edge303325363
}

define internal fastcc void @memcachedPipeline_demux() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1530, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1531, [1 x i8]* @str1531, [8 x i8]* @str1530) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1526, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1527, [1 x i8]* @str1527, [8 x i8]* @str1526) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1522, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1523, [1 x i8]* @str1523, [8 x i8]* @str1522) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1518, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1519, [1 x i8]* @str1519, [8 x i8]* @str1518) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1514, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1515, [1 x i8]* @str1515, [8 x i8]* @str1514) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1510, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1511, [1 x i8]* @str1511, [8 x i8]* @str1510) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1506, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1507, [1 x i8]* @str1507, [8 x i8]* @str1506) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @keyBuffer_V_V, [8 x i8]* @str1494, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1495, [1 x i8]* @str1495, [8 x i8]* @str1494)
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1490, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1491, [1 x i8]* @str1491, [8 x i8]* @str1490) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1486, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1487, [1 x i8]* @str1487, [8 x i8]* @str1486) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1482, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1483, [1 x i8]* @str1483, [8 x i8]* @str1482) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1478, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1479, [1 x i8]* @str1479, [8 x i8]* @str1478) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1474, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1475, [1 x i8]* @str1475, [8 x i8]* @str1474) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2getPath_V, [8 x i8]* @str1470, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1471, [1 x i8]* @str1471, [8 x i8]* @str1470) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2getPath_V, [8 x i8]* @str1466, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1467, [1 x i8]* @str1467, [8 x i8]* @str1466) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2setPathMetadata_V, [8 x i8]* @str1462, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1463, [1 x i8]* @str1463, [8 x i8]* @str1462) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2setPathMetadata_V, [8 x i8]* @str1458, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1459, [1 x i8]* @str1459, [8 x i8]* @str1458) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @demux2setPathValue_V, [8 x i8]* @str1450, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1451, [1 x i8]* @str1451, [8 x i8]* @str1450) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @demux2setPathValue_V, [8 x i8]* @str1446, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1447, [1 x i8]* @str1447, [8 x i8]* @str1446) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @demux2setPathValue_V, [8 x i8]* @str1442, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1443, [1 x i8]* @str1443, [8 x i8]* @str1442) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str127, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1128, [1 x i8]* @p_str1128, [1 x i8]* @p_str1128) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1128) nounwind
  %demuxState_load = load i2* @demuxState, align 1
  %wordCounter_V_load = load i2* @wordCounter_V, align 1
  %valueLength_V_load = load i16* @valueLength_V, align 2
  switch i2 %demuxState_load, label %._crit_edge530 [
    i2 0, label %0
    i2 -2, label %13
    i2 1, label %18
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @accCtrl2demux_V, i32 1) nounwind
  br i1 %tmp, label %1, label %._crit_edge531

; <label>:1                                       ; preds = %0
  %tmp272 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @accCtrl2demux_V) nounwind
  %p_Val2_s = trunc i256 %tmp272 to i124
  %metadataWrWord_SOP_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp272, i32 124)
  %metadataWrWord_keyValid_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp272, i32 125)
  %setData_data_V = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp272, i32 128, i32 191)
  %tmp_V_18 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp272, i32 192, i32 255)
  br i1 %metadataWrWord_SOP_V, label %2, label %._crit_edge532

; <label>:2                                       ; preds = %1
  store i2 1, i2* @wordCounter_V, align 1
  %tmp_94 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp272, i32 112)
  br i1 %tmp_94, label %._crit_edge533, label %3

; <label>:3                                       ; preds = %2
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256 %tmp272, i32 104, i32 111)
  %tmp_96 = icmp eq i8 %p_Result_s, 8
  %tmp_97 = icmp eq i8 %p_Result_s, 4
  %tmp_98 = or i1 %tmp_97, %tmp_96
  br i1 %tmp_98, label %._crit_edge533, label %6

._crit_edge533:                                   ; preds = %3, %2
  %tmp_32 = call i3 @_ssdm_op_PartSelect.i3.i256.i32.i32(i256 %tmp272, i32 125, i32 127)
  %tmp_1 = call i128 @_ssdm_op_BitConcatenate.i128.i3.i1.i124(i3 %tmp_32, i1 true, i124 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @metadataBuffer_V, i128 %tmp_1) nounwind
  br i1 %metadataWrWord_keyValid_V, label %4, label %._crit_edge536

; <label>:4                                       ; preds = %._crit_edge533
  %p_Result_9 = call i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256 %tmp272, i32 104, i32 111)
  %tmp_62 = icmp eq i8 %p_Result_9, 8
  br i1 %tmp_62, label %._crit_edge536, label %5

; <label>:5                                       ; preds = %4
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V, i64 %tmp_V_18) nounwind
  br label %._crit_edge536

._crit_edge536:                                   ; preds = %5, %4, %._crit_edge533
  store i2 -2, i2* @demuxState, align 1
  br label %12

; <label>:6                                       ; preds = %3
  %tmp_60 = icmp eq i8 %p_Result_s, 0
  br i1 %tmp_60, label %7, label %9

; <label>:7                                       ; preds = %6
  %tmp_33 = call i3 @_ssdm_op_PartSelect.i3.i256.i32.i32(i256 %tmp272, i32 125, i32 127)
  %tmp_2 = call i128 @_ssdm_op_BitConcatenate.i128.i3.i1.i124(i3 %tmp_33, i1 true, i124 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @metadataBuffer_V, i128 %tmp_2) nounwind
  %getMd_address_V = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %tmp272, i32 72, i32 103)
  %getMd_length_V = call i13 @_ssdm_op_PartSelect.i13.i256.i32.i32(i256 %tmp272, i32 8, i32 20)
  %tmp_3 = call i45 @_ssdm_op_BitConcatenate.i45.i13.i32(i13 %getMd_length_V, i32 %getMd_address_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i45P(i45* @demux2getPath_V, i45 %tmp_3) nounwind
  br i1 %metadataWrWord_keyValid_V, label %8, label %._crit_edge538

; <label>:8                                       ; preds = %7
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V, i64 %tmp_V_18) nounwind
  br label %._crit_edge538

._crit_edge538:                                   ; preds = %8, %7
  store i2 -2, i2* @demuxState, align 1
  br label %11

; <label>:9                                       ; preds = %6
  %tmp_63 = icmp eq i8 %p_Result_s, 1
  br i1 %tmp_63, label %._crit_edge540, label %._crit_edge539

._crit_edge540:                                   ; preds = %9
  %tmp_34 = call i3 @_ssdm_op_PartSelect.i3.i256.i32.i32(i256 %tmp272, i32 125, i32 127)
  %tmp_4 = call i128 @_ssdm_op_BitConcatenate.i128.i3.i1.i124(i3 %tmp_34, i1 true, i124 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @metadataBuffer_V, i128 %tmp_4) nounwind
  %setMd_address_V = call i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256 %tmp272, i32 72, i32 103)
  %setMd_length_V = call i13 @_ssdm_op_PartSelect.i13.i256.i32.i32(i256 %tmp272, i32 8, i32 20)
  %tmp_5 = call i45 @_ssdm_op_BitConcatenate.i45.i13.i32(i13 %setMd_length_V, i32 %setMd_address_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i45P(i45* @demux2setPathMetadata_V, i45 %tmp_5) nounwind
  %p_Result_1 = call i12 @_ssdm_op_PartSelect.i12.i256.i32.i32(i256 %tmp272, i32 8, i32 19)
  %tmp_EOP_V_1 = icmp ult i12 %p_Result_1, 9
  %tmp_64 = add i12 %p_Result_1, -8
  %storemerge = select i1 %tmp_EOP_V_1, i12 %p_Result_1, i12 %tmp_64
  %storemerge_cast = zext i12 %storemerge to i16
  store i16 %storemerge_cast, i16* @valueLength_V, align 2
  %tmp_6 = call i66 @_ssdm_op_BitConcatenate.i66.i1.i1.i64(i1 %tmp_EOP_V_1, i1 true, i64 %setData_data_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i66P(i66* @demux2setPathValue_V, i66 %tmp_6) nounwind
  br i1 %metadataWrWord_keyValid_V, label %10, label %._crit_edge541

; <label>:10                                      ; preds = %._crit_edge540
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V, i64 %tmp_V_18) nounwind
  br label %._crit_edge541

._crit_edge541:                                   ; preds = %10, %._crit_edge540
  store i2 1, i2* @demuxState, align 1
  br label %._crit_edge539

._crit_edge539:                                   ; preds = %._crit_edge541, %9
  br label %11

; <label>:11                                      ; preds = %._crit_edge539, %._crit_edge538
  br label %12

; <label>:12                                      ; preds = %11, %._crit_edge536
  br label %._crit_edge532

._crit_edge532:                                   ; preds = %12, %1
  br label %._crit_edge531

._crit_edge531:                                   ; preds = %._crit_edge532, %0
  br label %._crit_edge530

; <label>:13                                      ; preds = %codeRepl
  %tmp_27 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @accCtrl2demux_V, i32 1) nounwind
  br i1 %tmp_27, label %14, label %._crit_edge542

; <label>:14                                      ; preds = %13
  %tmp_7 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @accCtrl2demux_V) nounwind
  %metadataWrWord_keyValid_V_5 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_7, i32 125)
  %metadataWrWord_EOP_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_7, i32 127)
  %tmp_V_17 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_7, i32 192, i32 255)
  %tmp_92 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %wordCounter_V_load, i32 1)
  br i1 %tmp_92, label %._crit_edge543, label %15

; <label>:15                                      ; preds = %14
  %tmp_8 = trunc i256 %tmp_7 to i128
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @metadataBuffer_V, i128 %tmp_8) nounwind
  %tmp_58 = add i2 1, %wordCounter_V_load
  store i2 %tmp_58, i2* @wordCounter_V, align 1
  br label %._crit_edge543

._crit_edge543:                                   ; preds = %14, %15
  br i1 %metadataWrWord_keyValid_V_5, label %16, label %._crit_edge544

; <label>:16                                      ; preds = %._crit_edge543
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V, i64 %tmp_V_17) nounwind
  br label %._crit_edge544

._crit_edge544:                                   ; preds = %16, %._crit_edge543
  br i1 %metadataWrWord_EOP_V, label %17, label %._crit_edge545

; <label>:17                                      ; preds = %._crit_edge544
  store i2 0, i2* @demuxState, align 1
  br label %._crit_edge545

._crit_edge545:                                   ; preds = %17, %._crit_edge544
  br label %._crit_edge542

._crit_edge542:                                   ; preds = %._crit_edge545, %13
  br label %._crit_edge530

; <label>:18                                      ; preds = %codeRepl
  %tmp_9 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @accCtrl2demux_V) nounwind
  %metadataWrWord_keyValid_V_6 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_9, i32 125)
  %metadataWrWord_valueValid_V = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_9, i32 126)
  %metadataWrWord_EOP_V_4 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_9, i32 127)
  %setData_data_V_4 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_9, i32 128, i32 191)
  %tmp_V = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_9, i32 192, i32 255)
  %tmp_86 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %wordCounter_V_load, i32 1)
  br i1 %tmp_86, label %._crit_edge546, label %19

; <label>:19                                      ; preds = %18
  %tmp_10 = trunc i256 %tmp_9 to i128
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @metadataBuffer_V, i128 %tmp_10) nounwind
  %tmp_s = add i2 1, %wordCounter_V_load
  store i2 %tmp_s, i2* @wordCounter_V, align 1
  br label %._crit_edge546

._crit_edge546:                                   ; preds = %18, %19
  br i1 %metadataWrWord_keyValid_V_6, label %20, label %._crit_edge547

; <label>:20                                      ; preds = %._crit_edge546
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V, i64 %tmp_V) nounwind
  br label %._crit_edge547

._crit_edge547:                                   ; preds = %20, %._crit_edge546
  %tmp_59 = icmp ult i16 %valueLength_V_load, 9
  br i1 %tmp_59, label %._crit_edge548, label %21

; <label>:21                                      ; preds = %._crit_edge547
  %tmp_61 = add i16 %valueLength_V_load, -8
  store i16 %tmp_61, i16* @valueLength_V, align 2
  br label %._crit_edge548

._crit_edge548:                                   ; preds = %21, %._crit_edge547
  %tmp_EOP_V_11 = phi i1 [ false, %21 ], [ true, %._crit_edge547 ]
  br i1 %metadataWrWord_valueValid_V, label %22, label %._crit_edge549

; <label>:22                                      ; preds = %._crit_edge548
  %tmp_11 = call i66 @_ssdm_op_BitConcatenate.i66.i1.i1.i64(i1 %tmp_EOP_V_11, i1 false, i64 %setData_data_V_4)
  call void @_ssdm_op_Write.ap_fifo.volatile.i66P(i66* @demux2setPathValue_V, i66 %tmp_11) nounwind
  br label %._crit_edge549

._crit_edge549:                                   ; preds = %22, %._crit_edge548
  br i1 %metadataWrWord_EOP_V_4, label %23, label %._crit_edge550

; <label>:23                                      ; preds = %._crit_edge549
  store i2 0, i2* @demuxState, align 1
  br label %._crit_edge550

._crit_edge550:                                   ; preds = %23, %._crit_edge549
  br label %._crit_edge530

._crit_edge530:                                   ; preds = %._crit_edge550, %._crit_edge542, %._crit_edge531, %codeRepl
  ret void
}

define internal fastcc void @memcachedPipeline_receive(i512* %memRdData_V_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i512* %memRdData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1* @filterPopGet_V_V, [8 x i8]* @str1502, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1503, [1 x i8]* @str1503, [8 x i8]* @str1502)
  call void (...)* @_ssdm_op_SpecInterface(i64* @getPath2remux_V_V, [8 x i8]* @str1454, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1455, [1 x i8]* @str1455, [8 x i8]* @str1454)
  call void (...)* @_ssdm_op_SpecInterface(i12* @disp2rec_V_V, [8 x i8]* @str1438, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1439, [1 x i8]* @str1439, [8 x i8]* @str1438)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1128) nounwind
  %getState_load = load i1* @getState, align 1
  %getValueLength_V_1_load = load i12* @getValueLength_V_1, align 2
  %getCounter_1_load = load i8* @getCounter_1, align 1
  br i1 %getState_load, label %._crit_edge117, label %0

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i12P(i12* @disp2rec_V_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge115

; <label>:1                                       ; preds = %0
  %tmp_28 = call i1 @_ssdm_op_NbReadReq.axis.i512P(i512* %memRdData_V_V, i32 1)
  br i1 %tmp_28, label %2, label %._crit_edge115

; <label>:2                                       ; preds = %1
  %tmp_V_20 = call i12 @_ssdm_op_Read.ap_fifo.volatile.i12P(i12* @disp2rec_V_V)
  %tmp_V_23 = call i512 @_ssdm_op_Read.axis.volatile.i512P(i512* %memRdData_V_V)
  store i512 %tmp_V_23, i512* @memInputWord_V, align 64
  %tmp_V_22 = trunc i512 %tmp_V_23 to i64
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @getPath2remux_V_V, i64 %tmp_V_22)
  %tmp_68 = add i12 -8, %tmp_V_20
  store i12 %tmp_68, i12* @getValueLength_V_1, align 2
  %tmp_69 = add i8 1, %getCounter_1_load
  store i8 %tmp_69, i8* @getCounter_1, align 1
  store i1 true, i1* @getState, align 1
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %2, %1, %0
  br label %._crit_edge114

._crit_edge117:                                   ; preds = %codeRepl
  %tmp_99 = trunc i8 %getCounter_1_load to i4
  %Lo_assign = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %getCounter_1_load, i6 0)
  %Hi_assign = or i14 %Lo_assign, 63
  %p_Val2_s = load i512* @memInputWord_V, align 64
  %tmp_100 = icmp ugt i14 %Lo_assign, %Hi_assign
  %tmp_101 = call i10 @_ssdm_op_BitConcatenate.i10.i4.i6(i4 %tmp_99, i6 0)
  %tmp_102 = trunc i14 %Hi_assign to i10
  %tmp_103 = call i512 @llvm.part.select.i512(i512 %p_Val2_s, i32 511, i32 0)
  %tmp_104 = sub i10 %tmp_101, %tmp_102
  %tmp_105 = sub i10 511, %tmp_101
  %tmp_106 = sub i10 %tmp_102, %tmp_101
  %tmp_107 = select i1 %tmp_100, i10 %tmp_104, i10 %tmp_106
  %tmp_108 = select i1 %tmp_100, i512 %tmp_103, i512 %p_Val2_s
  %tmp_109 = select i1 %tmp_100, i10 %tmp_105, i10 %tmp_101
  %tmp_110 = sub i10 511, %tmp_107
  %tmp_111 = zext i10 %tmp_109 to i512
  %tmp_112 = zext i10 %tmp_110 to i512
  %tmp_113 = lshr i512 %tmp_108, %tmp_111
  %tmp_114 = lshr i512 -1, %tmp_112
  %p_Result_s = and i512 %tmp_113, %tmp_114
  %tmp_V = trunc i512 %p_Result_s to i64
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @getPath2remux_V_V, i64 %tmp_V)
  %tmp_117 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %getValueLength_V_1_load, i32 3, i32 11)
  %icmp = icmp ne i9 %tmp_117, 0
  %tmp_s = add i12 %getValueLength_V_1_load, -8
  %storemerge = select i1 %icmp, i12 %tmp_s, i12 0
  store i12 %storemerge, i12* @getValueLength_V_1, align 2
  %tmp_65 = icmp eq i12 %storemerge, 0
  br i1 %tmp_65, label %3, label %4

; <label>:3                                       ; preds = %._crit_edge117
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* @filterPopGet_V_V, i1 true)
  store i1 false, i1* @getState, align 1
  br label %7

; <label>:4                                       ; preds = %._crit_edge117
  %tmp_66 = icmp eq i8 %getCounter_1_load, 7
  br i1 %tmp_66, label %5, label %6

; <label>:5                                       ; preds = %4
  %tmp_V_19 = call i512 @_ssdm_op_Read.axis.volatile.i512P(i512* %memRdData_V_V)
  store i512 %tmp_V_19, i512* @memInputWord_V, align 64
  br label %7

; <label>:6                                       ; preds = %4
  %tmp_67 = add i8 %getCounter_1_load, 1
  br label %7

; <label>:7                                       ; preds = %6, %5, %3
  %storemerge8 = phi i8 [ 0, %3 ], [ %tmp_67, %6 ], [ 0, %5 ]
  store i8 %storemerge8, i8* @getCounter_1, align 1
  br label %._crit_edge114

._crit_edge114:                                   ; preds = %7, %._crit_edge115
  ret void
}

define internal fastcc void @memcachedPipeline_remux() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i64* @keyBuffer_V_V, [8 x i8]* @str1494, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1495, [1 x i8]* @str1495, [8 x i8]* @str1494)
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1490, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1491, [1 x i8]* @str1491, [8 x i8]* @str1490) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1486, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1487, [1 x i8]* @str1487, [8 x i8]* @str1486) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1482, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1483, [1 x i8]* @str1483, [8 x i8]* @str1482) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1478, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1479, [1 x i8]* @str1479, [8 x i8]* @str1478) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1474, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1475, [1 x i8]* @str1475, [8 x i8]* @str1474) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @getPath2remux_V_V, [8 x i8]* @str1454, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1455, [1 x i8]* @str1455, [8 x i8]* @str1454)
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1370, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1371, [1 x i8]* @str1371, [8 x i8]* @str1370) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1366, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1367, [1 x i8]* @str1367, [8 x i8]* @str1366) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1362, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1363, [1 x i8]* @str1363, [8 x i8]* @str1362) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1358, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1359, [1 x i8]* @str1359, [8 x i8]* @str1358) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1354, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1355, [1 x i8]* @str1355, [8 x i8]* @str1354) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1350, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1351, [1 x i8]* @str1351, [8 x i8]* @str1350) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1346, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1347, [1 x i8]* @str1347, [8 x i8]* @str1346) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str127, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1128, [1 x i8]* @p_str1128, [1 x i8]* @p_str1128) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1128) nounwind
  %remuxState_load = load i3* @remuxState, align 1
  %rmMdBuffer_metadata_V_load = load i124* @rmMdBuffer_metadata_V, align 8
  %rmKeyLength_load = load i8* @rmKeyLength, align 1
  %rmValueLength_load = load i16* @rmValueLength, align 2
  %tmp_48 = icmp eq i8 %rmKeyLength_load, 0
  %tmp_119 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %rmKeyLength_load, i32 3, i32 7)
  %icmp = icmp ne i5 %tmp_119, 0
  switch i3 %remuxState_load, label %._crit_edge606 [
    i3 0, label %0
    i3 1, label %._crit_edge607
    i3 2, label %8
    i3 -1, label %12
    i3 -3, label %14
    i3 -4, label %18
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i128P(i128* @metadataBuffer_V, i32 1) nounwind
  br i1 %tmp, label %1, label %._crit_edge607

; <label>:1                                       ; preds = %0
  %tmp338 = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* @metadataBuffer_V) nounwind
  %p_Val2_s = trunc i128 %tmp338 to i124
  store i124 %p_Val2_s, i124* @rmMdBuffer_metadata_V, align 8
  %tmp_121 = call i1 @_ssdm_op_BitSelect.i1.i128.i32(i128 %tmp338, i32 124)
  %tmp_122 = trunc i128 %tmp338 to i8
  %p_s = select i1 %tmp_121, i1 true, i1 false
  %p_rmKeyLength_load = select i1 %tmp_121, i8 %tmp_122, i8 %rmKeyLength_load
  br label %._crit_edge607

._crit_edge607:                                   ; preds = %1, %0, %codeRepl
  %remuxState_flag_2 = phi i1 [ false, %codeRepl ], [ false, %0 ], [ %p_s, %1 ]
  %p_Val2_7 = phi i124 [ %rmMdBuffer_metadata_V_load, %codeRepl ], [ %rmMdBuffer_metadata_V_load, %0 ], [ %p_Val2_s, %1 ]
  %rmKeyLength_loc_2 = phi i8 [ %rmKeyLength_load, %codeRepl ], [ %rmKeyLength_load, %0 ], [ %p_rmKeyLength_load, %1 ]
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i124.i32.i32(i124 %p_Val2_7, i32 112, i32 119)
  %tmp_s = icmp eq i8 %p_Result_s, 1
  br i1 %tmp_s, label %._crit_edge610, label %2

; <label>:2                                       ; preds = %._crit_edge607
  %p_Result_2 = call i8 @_ssdm_op_PartSelect.i8.i124.i32.i32(i124 %p_Val2_7, i32 104, i32 111)
  %tmp_124 = icmp eq i8 %p_Result_2, 8
  %tmp_125 = icmp eq i8 %p_Result_2, 4
  %tmp_126 = or i1 %tmp_125, %tmp_124
  %tmp_127 = icmp eq i8 %p_Result_2, 1
  %tmp_128 = or i1 %tmp_127, %tmp_126
  br i1 %tmp_128, label %._crit_edge610, label %5

._crit_edge610:                                   ; preds = %2, %._crit_edge607
  %tmp_72 = icmp eq i8 %rmKeyLength_loc_2, 0
  br i1 %tmp_72, label %4, label %3

; <label>:3                                       ; preds = %._crit_edge610
  %tmp_38 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @keyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_38, label %._crit_edge615, label %._crit_edge606

._crit_edge615:                                   ; preds = %3
  %tmp_V = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V) nounwind
  %tmp_129 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %rmKeyLength_loc_2, i32 3, i32 7)
  %icmp3 = icmp ne i5 %tmp_129, 0
  %tmp_76 = add i8 %rmKeyLength_loc_2, -8
  %storemerge3 = select i1 %icmp3, i8 %tmp_76, i8 0
  %tmp_1 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i68.i124(i64 %tmp_V, i68 3, i124 %p_Val2_7)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V, i256 %tmp_1) nounwind
  br label %._crit_edge606

; <label>:4                                       ; preds = %._crit_edge610
  %tmp_2 = call i256 @_ssdm_op_BitConcatenate.i256.i132.i124(i132 1, i124 %p_Val2_7)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V, i256 %tmp_2) nounwind
  br label %._crit_edge606

; <label>:5                                       ; preds = %2
  %tmp_73 = icmp eq i8 %p_Result_2, 0
  br i1 %tmp_73, label %6, label %._crit_edge606

; <label>:6                                       ; preds = %5
  %tmp_37 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @getPath2remux_V_V, i32 1) nounwind
  br i1 %tmp_37, label %7, label %._crit_edge606

; <label>:7                                       ; preds = %6
  %tmp_77 = icmp eq i8 %rmKeyLength_loc_2, 0
  br i1 %tmp_77, label %._crit_edge618, label %._crit_edge619

._crit_edge619:                                   ; preds = %7
  %tmp_V_24 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V) nounwind
  %tmp_131 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %rmKeyLength_loc_2, i32 3, i32 7)
  %icmp6 = icmp ne i5 %tmp_131, 0
  %tmp_79 = add i8 %rmKeyLength_loc_2, -8
  %storemerge5 = select i1 %icmp6, i8 %tmp_79, i8 0
  br label %._crit_edge618

._crit_edge618:                                   ; preds = %._crit_edge619, %7
  %rmKeyLength_flag_5 = phi i1 [ %remuxState_flag_2, %7 ], [ true, %._crit_edge619 ]
  %rmKeyLength_new_5 = phi i8 [ %rmKeyLength_loc_2, %7 ], [ %storemerge5, %._crit_edge619 ]
  %tmp_keyValid_V_1 = phi i1 [ false, %7 ], [ true, %._crit_edge619 ]
  %tmp_key_V_2 = phi i64 [ 0, %7 ], [ %tmp_V_24, %._crit_edge619 ]
  %p_Result_3 = call i13 @_ssdm_op_PartSelect.i13.i124.i32.i32(i124 %p_Val2_7, i32 8, i32 20)
  %tmp_132 = call i10 @_ssdm_op_PartSelect.i10.i124.i32.i32(i124 %p_Val2_7, i32 11, i32 20)
  %icmp9 = icmp ne i10 %tmp_132, 0
  %tmp_81 = add i13 -8, %p_Result_3
  %storemerge6 = select i1 %icmp9, i13 %tmp_81, i13 0
  %storemerge25_cast = zext i13 %storemerge6 to i16
  store i16 %storemerge25_cast, i16* @rmValueLength, align 2
  %tmp_V_25 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @getPath2remux_V_V) nounwind
  %tmp_3 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i2.i1.i1.i124(i64 %tmp_key_V_2, i64 %tmp_V_25, i2 1, i1 %tmp_keyValid_V_1, i1 true, i124 %p_Val2_7)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V, i256 %tmp_3) nounwind
  br label %._crit_edge606

; <label>:8                                       ; preds = %codeRepl
  %tmp_29 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i128P(i128* @metadataBuffer_V, i32 1) nounwind
  br i1 %tmp_29, label %9, label %._crit_edge606

; <label>:9                                       ; preds = %8
  %tmp_4 = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* @metadataBuffer_V) nounwind
  %outputWord_metadata_V = trunc i128 %tmp_4 to i124
  store i124 %outputWord_metadata_V, i124* @rmMdBuffer_metadata_V, align 8
  br i1 %tmp_48, label %11, label %10

; <label>:10                                      ; preds = %9
  %tmp_33 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @keyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_33, label %._crit_edge623, label %._crit_edge606

._crit_edge623:                                   ; preds = %10
  %tmp_V_26 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V) nounwind
  %tmp_74 = add i8 -8, %rmKeyLength_load
  %storemerge1 = select i1 %icmp, i8 %tmp_74, i8 0
  %tmp_EOP_V = icmp eq i8 %storemerge1, 0
  %not_tmp_EOP_V = xor i1 %tmp_EOP_V, true
  %storemerge18_cast = select i1 %not_tmp_EOP_V, i3 -1, i3 0
  %tmp_5 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i3.i124(i64 %tmp_V_26, i64 0, i1 %tmp_EOP_V, i3 2, i124 %outputWord_metadata_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V, i256 %tmp_5) nounwind
  br label %._crit_edge606

; <label>:11                                      ; preds = %9
  %tmp_6 = call i256 @_ssdm_op_BitConcatenate.i256.i132.i124(i132 8, i124 %outputWord_metadata_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V, i256 %tmp_6) nounwind
  br label %._crit_edge606

; <label>:12                                      ; preds = %codeRepl
  br i1 %tmp_48, label %._crit_edge606, label %13

; <label>:13                                      ; preds = %12
  %tmp_31 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @keyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_31, label %._crit_edge626, label %._crit_edge606

._crit_edge626:                                   ; preds = %13
  %tmp_V_27 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V) nounwind
  %tmp_70 = add i8 %rmKeyLength_load, -8
  %storemerge9 = select i1 %icmp, i8 %tmp_70, i8 0
  %tmp_EOP_V_12 = icmp eq i8 %storemerge9, 0
  %tmp_7 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i127(i64 %tmp_V_27, i64 0, i1 %tmp_EOP_V_12, i127 42535295865117307932921825928971026432)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V, i256 %tmp_7) nounwind
  br label %._crit_edge606

; <label>:14                                      ; preds = %codeRepl
  %tmp_30 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i128P(i128* @metadataBuffer_V, i32 1) nounwind
  br i1 %tmp_30, label %15, label %._crit_edge606

; <label>:15                                      ; preds = %14
  br i1 %tmp_48, label %._crit_edge629, label %16

; <label>:16                                      ; preds = %15
  %tmp_34 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @keyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_34, label %._crit_edge629, label %._crit_edge606

._crit_edge629:                                   ; preds = %16, %15
  %tmp_75 = icmp eq i16 %rmValueLength_load, 0
  br i1 %tmp_75, label %._crit_edge633, label %17

; <label>:17                                      ; preds = %._crit_edge629
  %tmp_36 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @getPath2remux_V_V, i32 1) nounwind
  br i1 %tmp_36, label %._crit_edge633, label %._crit_edge606

._crit_edge633:                                   ; preds = %17, %._crit_edge629
  %tmp_8 = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* @metadataBuffer_V) nounwind
  %outputWord_metadata_V_1 = trunc i128 %tmp_8 to i124
  store i124 %outputWord_metadata_V_1, i124* @rmMdBuffer_metadata_V, align 8
  br i1 %tmp_48, label %._crit_edge637, label %._crit_edge638

._crit_edge638:                                   ; preds = %._crit_edge633
  %tmp_V_28 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V) nounwind
  %tmp_80 = add i8 %rmKeyLength_load, -8
  %storemerge4 = select i1 %icmp, i8 %tmp_80, i8 0
  br label %._crit_edge637

._crit_edge637:                                   ; preds = %._crit_edge638, %._crit_edge633
  %tmp_keyValid_V = phi i1 [ false, %._crit_edge633 ], [ true, %._crit_edge638 ]
  %rmKeyLength_load_1 = phi i8 [ %rmKeyLength_load, %._crit_edge633 ], [ %storemerge4, %._crit_edge638 ]
  %tmp_key_V_1 = phi i64 [ 0, %._crit_edge633 ], [ %tmp_V_28, %._crit_edge638 ]
  br i1 %tmp_75, label %._crit_edge639, label %._crit_edge640

._crit_edge640:                                   ; preds = %._crit_edge637
  %tmp_V_29 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @getPath2remux_V_V) nounwind
  %tmp_134 = call i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16 %rmValueLength_load, i32 3, i32 15)
  %icmp5 = icmp ne i13 %tmp_134, 0
  %tmp_83 = add i16 %rmValueLength_load, -8
  %storemerge7 = select i1 %icmp5, i16 %tmp_83, i16 0
  store i16 %storemerge7, i16* @rmValueLength, align 2
  br label %._crit_edge639

._crit_edge639:                                   ; preds = %._crit_edge640, %._crit_edge637
  %tmp_87 = phi i16 [ %storemerge7, %._crit_edge640 ], [ %rmValueLength_load, %._crit_edge637 ]
  %tmp_valueValid_V = phi i1 [ true, %._crit_edge640 ], [ false, %._crit_edge637 ]
  %tmp_value_V = phi i64 [ %tmp_V_29, %._crit_edge640 ], [ 0, %._crit_edge637 ]
  %tmp_88 = icmp eq i16 %tmp_87, 0
  %tmp_89 = icmp eq i8 %rmKeyLength_load_1, 0
  %tmp_EOP_V_14 = and i1 %tmp_88, %tmp_89
  %storemerge8 = select i1 %tmp_EOP_V_14, i3 0, i3 -4
  %tmp_9 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i1.i124(i64 %tmp_key_V_1, i64 %tmp_value_V, i1 %tmp_EOP_V_14, i1 %tmp_valueValid_V, i1 %tmp_keyValid_V, i1 false, i124 %outputWord_metadata_V_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V, i256 %tmp_9) nounwind
  br label %._crit_edge606

; <label>:18                                      ; preds = %codeRepl
  br i1 %tmp_48, label %._crit_edge641, label %19

; <label>:19                                      ; preds = %18
  %tmp_32 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @keyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_32, label %._crit_edge641, label %._crit_edge606

._crit_edge641:                                   ; preds = %19, %18
  %tmp_71 = icmp eq i16 %rmValueLength_load, 0
  br i1 %tmp_71, label %._crit_edge645, label %20

; <label>:20                                      ; preds = %._crit_edge641
  %tmp_35 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @getPath2remux_V_V, i32 1) nounwind
  br i1 %tmp_35, label %._crit_edge645, label %._crit_edge606

._crit_edge645:                                   ; preds = %20, %._crit_edge641
  br i1 %tmp_48, label %._crit_edge649, label %._crit_edge650

._crit_edge650:                                   ; preds = %._crit_edge645
  %tmp_V_30 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @keyBuffer_V_V) nounwind
  %tmp_78 = add i8 %rmKeyLength_load, -8
  %storemerge2 = select i1 %icmp, i8 %tmp_78, i8 0
  br label %._crit_edge649

._crit_edge649:                                   ; preds = %._crit_edge650, %._crit_edge645
  %tmp_keyValid_V_13 = phi i1 [ false, %._crit_edge645 ], [ true, %._crit_edge650 ]
  %rmKeyLength_load_s = phi i8 [ %rmKeyLength_load, %._crit_edge645 ], [ %storemerge2, %._crit_edge650 ]
  %tmp_key_V_10 = phi i64 [ 0, %._crit_edge645 ], [ %tmp_V_30, %._crit_edge650 ]
  br i1 %tmp_71, label %._crit_edge651, label %._crit_edge652

._crit_edge652:                                   ; preds = %._crit_edge649
  %tmp_V_31 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @getPath2remux_V_V) nounwind
  %tmp_133 = call i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16 %rmValueLength_load, i32 3, i32 15)
  %icmp4 = icmp ne i13 %tmp_133, 0
  %tmp_82 = add i16 %rmValueLength_load, -8
  %storemerge = select i1 %icmp4, i16 %tmp_82, i16 0
  store i16 %storemerge, i16* @rmValueLength, align 2
  br label %._crit_edge651

._crit_edge651:                                   ; preds = %._crit_edge652, %._crit_edge649
  %tmp_84 = phi i16 [ %storemerge, %._crit_edge652 ], [ %rmValueLength_load, %._crit_edge649 ]
  %tmp_valueValid_V_4 = phi i1 [ true, %._crit_edge652 ], [ false, %._crit_edge649 ]
  %tmp_value_V_5 = phi i64 [ %tmp_V_31, %._crit_edge652 ], [ 0, %._crit_edge649 ]
  %tmp_85 = icmp eq i16 %tmp_84, 0
  %tmp_86 = icmp eq i8 %rmKeyLength_load_s, 0
  %tmp_EOP_V_13 = and i1 %tmp_85, %tmp_86
  %tmp_10 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i125(i64 %tmp_key_V_10, i64 %tmp_value_V_5, i1 %tmp_EOP_V_13, i1 %tmp_valueValid_V_4, i1 %tmp_keyValid_V_13, i125 0)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @valueStoreDram2merger_V, i256 %tmp_10) nounwind
  br label %._crit_edge606

._crit_edge606:                                   ; preds = %._crit_edge651, %20, %19, %._crit_edge639, %17, %16, %14, %._crit_edge626, %13, %12, %11, %._crit_edge623, %10, %8, %._crit_edge618, %6, %5, %4, %._crit_edge615, %3, %codeRepl
  %remuxState_flag_s = phi i1 [ false, %codeRepl ], [ true, %4 ], [ true, %._crit_edge615 ], [ %remuxState_flag_2, %3 ], [ true, %._crit_edge618 ], [ %remuxState_flag_2, %6 ], [ %remuxState_flag_2, %5 ], [ false, %8 ], [ true, %11 ], [ true, %._crit_edge623 ], [ false, %10 ], [ false, %12 ], [ %tmp_EOP_V_12, %._crit_edge626 ], [ false, %13 ], [ true, %._crit_edge639 ], [ false, %17 ], [ false, %16 ], [ false, %14 ], [ %tmp_EOP_V_13, %._crit_edge651 ], [ false, %20 ], [ false, %19 ]
  %remuxState_new_1 = phi i3 [ undef, %codeRepl ], [ 2, %4 ], [ 2, %._crit_edge615 ], [ 1, %3 ], [ -3, %._crit_edge618 ], [ 1, %6 ], [ 1, %5 ], [ undef, %8 ], [ 0, %11 ], [ %storemerge18_cast, %._crit_edge623 ], [ undef, %10 ], [ 0, %12 ], [ 0, %._crit_edge626 ], [ 0, %13 ], [ %storemerge8, %._crit_edge639 ], [ undef, %17 ], [ undef, %16 ], [ undef, %14 ], [ 0, %._crit_edge651 ], [ 0, %20 ], [ 0, %19 ]
  %rmKeyLength_flag_s = phi i1 [ false, %codeRepl ], [ %remuxState_flag_2, %4 ], [ true, %._crit_edge615 ], [ %remuxState_flag_2, %3 ], [ %rmKeyLength_flag_5, %._crit_edge618 ], [ %remuxState_flag_2, %6 ], [ %remuxState_flag_2, %5 ], [ false, %8 ], [ false, %11 ], [ true, %._crit_edge623 ], [ false, %10 ], [ false, %12 ], [ true, %._crit_edge626 ], [ false, %13 ], [ %tmp_keyValid_V, %._crit_edge639 ], [ false, %17 ], [ false, %16 ], [ false, %14 ], [ %tmp_keyValid_V_13, %._crit_edge651 ], [ false, %20 ], [ false, %19 ]
  %rmKeyLength_new_s = phi i8 [ undef, %codeRepl ], [ 0, %4 ], [ %storemerge3, %._crit_edge615 ], [ %rmKeyLength_loc_2, %3 ], [ %rmKeyLength_new_5, %._crit_edge618 ], [ %rmKeyLength_loc_2, %6 ], [ %rmKeyLength_loc_2, %5 ], [ undef, %8 ], [ undef, %11 ], [ %storemerge1, %._crit_edge623 ], [ undef, %10 ], [ undef, %12 ], [ %storemerge9, %._crit_edge626 ], [ undef, %13 ], [ %rmKeyLength_load_1, %._crit_edge639 ], [ undef, %17 ], [ undef, %16 ], [ undef, %14 ], [ %rmKeyLength_load_s, %._crit_edge651 ], [ undef, %20 ], [ undef, %19 ]
  br i1 %rmKeyLength_flag_s, label %mergeST549, label %._crit_edge606.new550

mergeST:                                          ; preds = %._crit_edge606.new550
  store i3 %remuxState_new_1, i3* @remuxState, align 1
  br label %._crit_edge606.new

._crit_edge606.new:                               ; preds = %._crit_edge606.new550, %mergeST
  ret void

mergeST549:                                       ; preds = %._crit_edge606
  store i8 %rmKeyLength_new_s, i8* @rmKeyLength, align 1
  br label %._crit_edge606.new550

._crit_edge606.new550:                            ; preds = %mergeST549, %._crit_edge606
  br i1 %remuxState_flag_s, label %mergeST, label %._crit_edge606.new
}

declare i512 @llvm.part.select.i512(i512, i32, i32) nounwind readnone

define internal fastcc void @memcachedPipeline_response_f() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i64* @valueBuffer_rf_V_V, [8 x i8]* @str1538, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1539, [1 x i8]* @str1539, [8 x i8]* @str1538)
  call void (...)* @_ssdm_op_SpecInterface(i248* @metadataBuffer_rf_V_V, [8 x i8]* @str1534, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1535, [1 x i8]* @str1535, [8 x i8]* @str1534)
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1258, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1259, [1 x i8]* @str1259, [8 x i8]* @str1258) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1254, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1255, [1 x i8]* @str1255, [8 x i8]* @str1254) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1250, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1251, [1 x i8]* @str1251, [8 x i8]* @str1250) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1246, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1247, [1 x i8]* @str1247, [8 x i8]* @str1246) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1242, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1243, [1 x i8]* @str1243, [8 x i8]* @str1242) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1238, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1239, [1 x i8]* @str1239, [8 x i8]* @str1238) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1234, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1235, [1 x i8]* @str1235, [8 x i8]* @str1234) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str164) nounwind
  %tmp = call i1 @_ssdm_op_NbWriteReq.ap_fifo.i64P(i64* @valueBuffer_rf_V_V, i32 1) nounwind
  br i1 %tmp, label %0, label %._crit_edge112

; <label>:0                                       ; preds = %codeRepl
  %tmp_39 = call i1 @_ssdm_op_NbWriteReq.ap_fifo.i248P(i248* @metadataBuffer_rf_V_V, i32 1) nounwind
  br i1 %tmp_39, label %1, label %._crit_edge112

; <label>:1                                       ; preds = %0
  %tmp_40 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @merger2responseFormatter_V, i32 1) nounwind
  br i1 %tmp_40, label %2, label %._crit_edge112

; <label>:2                                       ; preds = %1
  %tmp51 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @merger2responseFormatter_V) nounwind
  %tmp_135 = trunc i256 %tmp51 to i124
  %tmp_136 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp51, i32 124)
  %tmp_137 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp51, i32 126)
  %tmp_138 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp51, i32 127)
  %tmp_V = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp51, i32 128, i32 191)
  %inWordCounter_V_load = load i2* @inWordCounter_V, align 1
  %tmp_s = icmp eq i2 %inWordCounter_V_load, 0
  %or_cond = and i1 %tmp_136, %tmp_s
  %p_Val2_s = load i248* @bf_metadataTempBuffer_V, align 16
  br i1 %or_cond, label %3, label %._crit_edge115

; <label>:3                                       ; preds = %2
  %p_Result_s = call i248 @llvm.part.set.i248.i124(i248 %p_Val2_s, i124 %tmp_135, i32 0, i32 123)
  store i248 %p_Result_s, i248* @bf_metadataTempBuffer_V, align 16
  br i1 %tmp_137, label %4, label %._crit_edge117

; <label>:4                                       ; preds = %3
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @valueBuffer_rf_V_V, i64 %tmp_V) nounwind
  br label %._crit_edge117

._crit_edge117:                                   ; preds = %4, %3
  br label %._crit_edge118

._crit_edge115:                                   ; preds = %2
  br i1 %tmp_s, label %._crit_edge118, label %5

; <label>:5                                       ; preds = %._crit_edge115
  %tmp_139 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %inWordCounter_V_load, i32 1)
  br i1 %tmp_139, label %._crit_edge119, label %6

; <label>:6                                       ; preds = %5
  %p_Result_2 = call i248 @llvm.part.set.i248.i124(i248 %p_Val2_s, i124 %tmp_135, i32 124, i32 247)
  store i248 %p_Result_2, i248* @bf_metadataTempBuffer_V, align 16
  %tmp_90 = icmp eq i2 %inWordCounter_V_load, 1
  br i1 %tmp_90, label %7, label %._crit_edge120

; <label>:7                                       ; preds = %6
  call void @_ssdm_op_Write.ap_fifo.volatile.i248P(i248* @metadataBuffer_rf_V_V, i248 %p_Result_2) nounwind
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %7, %6
  %tmp_91 = add i2 %inWordCounter_V_load, 1
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %5, %._crit_edge120
  %inWordCounter_V_flag = phi i1 [ true, %._crit_edge120 ], [ false, %5 ]
  %inWordCounter_V_new = phi i2 [ %tmp_91, %._crit_edge120 ], [ undef, %5 ]
  br i1 %tmp_137, label %8, label %._crit_edge121

; <label>:8                                       ; preds = %._crit_edge119
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @valueBuffer_rf_V_V, i64 %tmp_V) nounwind
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %8, %._crit_edge119
  %p_inWordCounter_V_flag = or i1 %tmp_138, %inWordCounter_V_flag
  %p_inWordCounter_V_new = select i1 %tmp_138, i2 0, i2 %inWordCounter_V_new
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %._crit_edge121, %._crit_edge115, %._crit_edge117
  %inWordCounter_V_flag_3 = phi i1 [ true, %._crit_edge117 ], [ false, %._crit_edge115 ], [ %p_inWordCounter_V_flag, %._crit_edge121 ]
  %inWordCounter_V_new_3 = phi i2 [ 1, %._crit_edge117 ], [ undef, %._crit_edge115 ], [ %p_inWordCounter_V_new, %._crit_edge121 ]
  br i1 %inWordCounter_V_flag_3, label %mergeST, label %.new

._crit_edge112:                                   ; preds = %.new, %1, %0, %codeRepl
  ret void

mergeST:                                          ; preds = %._crit_edge118
  store i2 %inWordCounter_V_new_3, i2* @inWordCounter_V, align 1
  br label %.new

.new:                                             ; preds = %mergeST, %._crit_edge118
  br label %._crit_edge112
}

define internal fastcc void @memcachedPipeline_response_r(i64* %respOutput_V_data_V, i112* %respOutput_V_user_V, i8* %respOutput_V_keep_V, i1* %respOutput_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i1* %respOutput_V_last_V, i8* %respOutput_V_keep_V, i112* %respOutput_V_user_V, i64* %respOutput_V_data_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i64* @valueBuffer_rf_V_V, [8 x i8]* @str1538, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1539, [1 x i8]* @str1539, [8 x i8]* @str1538)
  call void (...)* @_ssdm_op_SpecInterface(i248* @metadataBuffer_rf_V_V, [8 x i8]* @str1534, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1535, [1 x i8]* @str1535, [8 x i8]* @str1534)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str164) nounwind
  %br_outWordCounter_load = load i5* @br_outWordCounter, align 1
  %tmp_140 = trunc i5 %br_outWordCounter_load to i4
  %tmp = icmp eq i4 %tmp_140, 0
  %outOpCode_load = load i8* @outOpCode, align 1
  %errorCode_load = load i8* @errorCode, align 1
  br i1 %tmp, label %0, label %2

; <label>:0                                       ; preds = %codeRepl
  %tmp_41 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i248P(i248* @metadataBuffer_rf_V_V, i32 1)
  br i1 %tmp_41, label %1, label %._crit_edge936

; <label>:1                                       ; preds = %0
  %tmp_V_35 = call i248 @_ssdm_op_Read.ap_fifo.volatile.i248P(i248* @metadataBuffer_rf_V_V)
  store i248 %tmp_V_35, i248* @outMetadataTempBuffer_V, align 16
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i248.i32.i32(i248 %tmp_V_35, i32 104, i32 111)
  store i8 %p_Result_s, i8* @outOpCode, align 1
  %p_Result_s_86 = call i8 @_ssdm_op_PartSelect.i8.i248.i32.i32(i248 %tmp_V_35, i32 112, i32 119)
  store i8 %p_Result_s_86, i8* @errorCode, align 1
  store i5 1, i5* @br_outWordCounter, align 1
  br label %._crit_edge936

._crit_edge936:                                   ; preds = %1, %0
  br label %35

; <label>:2                                       ; preds = %codeRepl
  %tmp_s = icmp eq i4 %tmp_140, 1
  %valueLength_load = load i16* @valueLength, align 2
  %p_Val2_12 = load i64* @xtrasBuffer_V, align 8
  br i1 %tmp_s, label %3, label %5

; <label>:3                                       ; preds = %2
  %tmp_42 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @valueBuffer_rf_V_V, i32 1)
  %tmp_92 = icmp eq i8 %outOpCode_load, 0
  %p_not = icmp ne i8 %errorCode_load, 1
  %tmp46 = and i1 %tmp_92, %p_not
  %or_cond913_not = and i1 %tmp46, %tmp_42
  %tmp_93 = icmp eq i8 %errorCode_load, 1
  %or_cond3_87 = or i1 %or_cond913_not, %tmp_93
  %or_cond915_not = xor i1 %or_cond3_87, true
  %or_cond4_88 = and i1 %tmp_92, %or_cond915_not
  br i1 %or_cond4_88, label %._crit_edge937, label %_ifconv

_ifconv:                                          ; preds = %3
  %p_Val2_8 = load i248* @outMetadataTempBuffer_V, align 16
  %p_Result_4 = call i32 @_ssdm_op_PartSelect.i32.i248.i32.i32(i248 %p_Val2_8, i32 8, i32 39)
  %tmp_95 = add i32 -8, %p_Result_4
  store i32 %tmp_95, i32* @resp_ValueConvertTemp_V, align 4
  %tmp_141 = trunc i32 %tmp_95 to i16
  store i16 %tmp_141, i16* @valueLength, align 2
  %p_Result_5 = call i96 @_ssdm_op_PartSelect.i96.i248.i32.i32(i248 %p_Val2_8, i32 124, i32 219)
  %p_Result_6 = call i8 @_ssdm_op_PartSelect.i8.i248.i32.i32(i248 %p_Val2_8, i32 104, i32 111)
  %p_Result_15 = call i64 @_ssdm_op_BitConcatenate.i64.i48.i8.i8(i48 0, i8 %p_Result_6, i8 -127)
  %p_Result_16 = call i64 @_ssdm_op_BitConcatenate.i64.i48.i8.i8(i48 262144, i8 %p_Result_6, i8 -127)
  %tmp_50 = or i8 %errorCode_load, %outOpCode_load
  %tmp_51 = icmp eq i8 %tmp_50, 0
  %tempOutput_data_V = select i1 %tmp_51, i64 %p_Result_16, i64 %p_Result_15
  %p_Result_3 = call i8 @_ssdm_op_PartSelect.i8.i248.i32.i32(i248 %p_Val2_8, i32 112, i32 119)
  %p_Result_17 = call i64 @llvm.part.set.i64.i8(i64 %tempOutput_data_V, i8 %p_Result_3, i32 56, i32 63)
  %tmp_96 = icmp ne i8 %outOpCode_load, 0
  %or_cond7_89 = or i1 %tmp_96, %tmp_93
  br i1 %or_cond7_89, label %.critedge, label %._crit_edge938

._crit_edge938:                                   ; preds = %_ifconv
  %tmp_V = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @valueBuffer_rf_V_V)
  %tempVar_V = call i16 @_ssdm_op_PartSelect.i16.i248.i32.i32(i248 %p_Val2_8, i32 8, i32 23)
  %br_valueLengthTemp_V = add i16 %tempVar_V, 20
  br label %4

.critedge:                                        ; preds = %_ifconv
  %p_cast_cast_cast = select i1 %tmp_93, i16 32, i16 24
  br label %4

; <label>:4                                       ; preds = %.critedge, %._crit_edge938
  %xtrasBuffer_V_new = phi i64 [ 0, %.critedge ], [ %tmp_V, %._crit_edge938 ]
  %p_0492_1 = phi i16 [ %p_cast_cast_cast, %.critedge ], [ %br_valueLengthTemp_V, %._crit_edge938 ]
  %p_Result_18 = call i112 @_ssdm_op_BitConcatenate.i112.i16.i96(i16 %p_0492_1, i96 %p_Result_5)
  store i5 2, i5* @br_outWordCounter, align 1
  call void @_ssdm_op_Write.axis.volatile.i64P.i112P.i8P.i1P(i64* %respOutput_V_data_V, i112* %respOutput_V_user_V, i8* %respOutput_V_keep_V, i1* %respOutput_V_last_V, i64 %p_Result_17, i112 %p_Result_18, i8 -1, i1 false)
  br label %._crit_edge937

; <label>:5                                       ; preds = %2
  %tmp_94 = icmp eq i4 %tmp_140, 2
  br i1 %tmp_94, label %6, label %9

; <label>:6                                       ; preds = %5
  %tmp_97 = or i8 %errorCode_load, %outOpCode_load
  %tmp_98 = icmp eq i8 %tmp_97, 0
  br i1 %tmp_98, label %7, label %8

; <label>:7                                       ; preds = %6
  %resp_ValueConvertTemp_V_load = load i32* @resp_ValueConvertTemp_V, align 4
  %p_Val2_11 = add i32 4, %resp_ValueConvertTemp_V_load
  store i32 %p_Val2_11, i32* @resp_ValueConvertTemp_V, align 4
  %p_Result_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_11, i32 24, i32 31)
  %p_Result_2_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_11, i32 16, i32 23)
  %p_Result_4_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_11, i32 8, i32 15)
  %tmp_142 = trunc i32 %p_Val2_11 to i8
  %tmp_i = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %tmp_142, i8 %p_Result_4_i, i8 %p_Result_2_i, i8 %p_Result_i)
  br label %._crit_edge939

; <label>:8                                       ; preds = %6
  %tmp_100 = icmp eq i8 %outOpCode_load, 0
  %tmp_101 = icmp eq i8 %outOpCode_load, 4
  %or_cond5_90 = or i1 %tmp_100, %tmp_101
  %tmp_102 = icmp eq i8 %errorCode_load, 1
  %or_cond6_91 = and i1 %or_cond5_90, %tmp_102
  %p_1_cast_cast_cast = select i1 %or_cond6_91, i32 134217728, i32 0
  br label %._crit_edge939

._crit_edge939:                                   ; preds = %8, %7
  %tmp_data_V_3 = phi i32 [ %tmp_i, %7 ], [ %p_1_cast_cast_cast, %8 ]
  %tmp_data_V_4 = zext i32 %tmp_data_V_3 to i64
  store i5 3, i5* @br_outWordCounter, align 1
  call void @_ssdm_op_Write.axis.volatile.i64P.i112P.i8P.i1P(i64* %respOutput_V_data_V, i112* %respOutput_V_user_V, i8* %respOutput_V_keep_V, i1* %respOutput_V_last_V, i64 %tmp_data_V_4, i112 0, i8 -1, i1 false)
  br label %._crit_edge937

; <label>:9                                       ; preds = %5
  %tmp_99 = icmp eq i4 %tmp_140, 3
  br i1 %tmp_99, label %10, label %16

; <label>:10                                      ; preds = %9
  %tmp_103 = icmp eq i8 %errorCode_load, 1
  br i1 %tmp_103, label %11, label %12

; <label>:11                                      ; preds = %10
  store i5 7, i5* @br_outWordCounter, align 1
  br label %15

; <label>:12                                      ; preds = %10
  %tmp_143 = icmp eq i8 %outOpCode_load, 8
  %tmp_144 = icmp eq i8 %outOpCode_load, 4
  %tmp_145 = or i1 %tmp_144, %tmp_143
  %tmp_146 = icmp eq i8 %outOpCode_load, 1
  %tmp_147 = or i1 %tmp_146, %tmp_145
  br i1 %tmp_147, label %._crit_edge942, label %13

._crit_edge942:                                   ; preds = %12
  store i5 0, i5* @br_outWordCounter, align 1
  br label %15

; <label>:13                                      ; preds = %12
  %tmp_106 = icmp eq i8 %outOpCode_load, 0
  br i1 %tmp_106, label %14, label %._crit_edge943

; <label>:14                                      ; preds = %13
  store i5 4, i5* @br_outWordCounter, align 1
  br label %._crit_edge943

._crit_edge943:                                   ; preds = %14, %13
  br label %15

; <label>:15                                      ; preds = %._crit_edge943, %._crit_edge942, %11
  %tmp_last_V = phi i1 [ false, %11 ], [ true, %._crit_edge942 ], [ false, %._crit_edge943 ]
  call void @_ssdm_op_Write.axis.volatile.i64P.i112P.i8P.i1P(i64* %respOutput_V_data_V, i112* %respOutput_V_user_V, i8* %respOutput_V_keep_V, i1* %respOutput_V_last_V, i64 0, i112 0, i8 -1, i1 %tmp_last_V)
  br label %._crit_edge937

; <label>:16                                      ; preds = %9
  %tmp_104 = icmp eq i4 %tmp_140, 4
  br i1 %tmp_104, label %17, label %22

; <label>:17                                      ; preds = %16
  %tmp_43 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @valueBuffer_rf_V_V, i32 1)
  br i1 %tmp_43, label %18, label %._crit_edge937

; <label>:18                                      ; preds = %17
  %tmp_148 = trunc i64 %p_Val2_12 to i32
  %tmp_V_36 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @valueBuffer_rf_V_V)
  %tmp_149 = trunc i64 %tmp_V_36 to i32
  %p_Result_19 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_149, i32 %tmp_148)
  %tmp_107 = icmp ult i16 %valueLength_load, 5
  br i1 %tmp_107, label %19, label %20

; <label>:19                                      ; preds = %18
  store i5 0, i5* @br_outWordCounter, align 1
  %tmp_150 = trunc i16 %valueLength_load to i4
  %tmp_110 = add i4 4, %tmp_150
  %sel_tmp_i = icmp eq i4 %tmp_110, 7
  %sel_tmp2_i = icmp eq i4 %tmp_110, 6
  %sel_tmp4_i = icmp eq i4 %tmp_110, 5
  %sel_tmp6_i = icmp eq i4 %tmp_150, 0
  %newSel49_cast_cast = select i1 %sel_tmp4_i, i8 31, i8 63
  %or_cond = or i1 %sel_tmp4_i, %sel_tmp2_i
  %newSel = select i1 %sel_tmp_i, i8 127, i8 -1
  %newSel1 = select i1 %or_cond, i8 %newSel49_cast_cast, i8 %newSel
  %tempOutput_keep_V = select i1 %sel_tmp6_i, i8 15, i8 %newSel1
  br label %21

; <label>:20                                      ; preds = %18
  store i5 5, i5* @br_outWordCounter, align 1
  %tmp_111 = add i16 %valueLength_load, -4
  store i16 %tmp_111, i16* @valueLength, align 2
  br label %21

; <label>:21                                      ; preds = %20, %19
  %tmp_last_V_1 = phi i1 [ true, %19 ], [ false, %20 ]
  %tmp_keep_V_1 = phi i8 [ %tempOutput_keep_V, %19 ], [ -1, %20 ]
  call void @_ssdm_op_Write.axis.volatile.i64P.i112P.i8P.i1P(i64* %respOutput_V_data_V, i112* %respOutput_V_user_V, i8* %respOutput_V_keep_V, i1* %respOutput_V_last_V, i64 %p_Result_19, i112 0, i8 %tmp_keep_V_1, i1 %tmp_last_V_1)
  br label %._crit_edge937

; <label>:22                                      ; preds = %16
  %tmp_105 = icmp eq i4 %tmp_140, 5
  br i1 %tmp_105, label %23, label %30

; <label>:23                                      ; preds = %22
  %tmp_108 = icmp ugt i16 %valueLength_load, 4
  br i1 %tmp_108, label %24, label %._crit_edge945

; <label>:24                                      ; preds = %23
  %tmp_44 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @valueBuffer_rf_V_V, i32 1)
  br i1 %tmp_44, label %._crit_edge947, label %._crit_edge945

._crit_edge947:                                   ; preds = %24
  %p_Result_7 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %p_Val2_12, i32 32, i32 63)
  %tmp_V_37 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @valueBuffer_rf_V_V)
  %tmp_152 = trunc i64 %tmp_V_37 to i32
  %p_Result_20 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_152, i32 %p_Result_7)
  %tmp_153 = trunc i16 %valueLength_load to i8
  %sel_tmp_i4 = icmp eq i8 %tmp_153, 7
  %sel_tmp2_i6 = icmp eq i8 %tmp_153, 6
  %sel_tmp4_i8 = icmp eq i8 %tmp_153, 5
  %sel_tmp6_i2 = icmp eq i8 %tmp_153, 4
  %sel_tmp8_i1 = icmp eq i8 %tmp_153, 3
  %sel_tmp10_i1 = icmp eq i8 %tmp_153, 2
  %sel_tmp12_i1 = icmp eq i8 %tmp_153, 1
  %newSel59_cast_cast = select i1 %sel_tmp12_i1, i4 1, i4 3
  %or_cond5 = or i1 %sel_tmp12_i1, %sel_tmp10_i1
  %newSel8 = select i1 %sel_tmp8_i1, i4 7, i4 -1
  %or_cond6 = or i1 %sel_tmp8_i1, %sel_tmp6_i2
  %newSel63_cast_cast = select i1 %sel_tmp4_i8, i8 31, i8 63
  %or_cond7 = or i1 %sel_tmp4_i8, %sel_tmp2_i6
  %newSel9 = select i1 %sel_tmp_i4, i8 127, i8 -1
  %newSel2 = select i1 %or_cond5, i4 %newSel59_cast_cast, i4 %newSel8
  %newSel67_cast = zext i4 %newSel2 to i8
  %or_cond8 = or i1 %or_cond5, %or_cond6
  %newSel7 = select i1 %or_cond7, i8 %newSel63_cast_cast, i8 %newSel9
  %tempKeep_V = select i1 %or_cond8, i8 %newSel67_cast, i8 %newSel7
  %tmp_114 = icmp ugt i16 %valueLength_load, 8
  %tmp_115 = add i16 -8, %valueLength_load
  %tmp_116 = select i1 %tmp_114, i16 %tmp_115, i16 0
  store i16 %tmp_116, i16* @valueLength, align 2
  %tmp_117 = icmp eq i16 %tmp_116, 0
  br i1 %tmp_117, label %25, label %26

; <label>:25                                      ; preds = %._crit_edge947
  store i5 0, i5* @br_outWordCounter, align 1
  br label %28

; <label>:26                                      ; preds = %._crit_edge947
  %tmp_119 = icmp ult i16 %tmp_116, 5
  br i1 %tmp_119, label %27, label %._crit_edge948

; <label>:27                                      ; preds = %26
  store i5 6, i5* @br_outWordCounter, align 1
  br label %._crit_edge948

._crit_edge948:                                   ; preds = %27, %26
  br label %28

; <label>:28                                      ; preds = %._crit_edge948, %25
  %tmp_last_V_2 = phi i1 [ true, %25 ], [ false, %._crit_edge948 ]
  %tmp_keep_V_4 = phi i8 [ %tempKeep_V, %25 ], [ -1, %._crit_edge948 ]
  call void @_ssdm_op_Write.axis.volatile.i64P.i112P.i8P.i1P(i64* %respOutput_V_data_V, i112* %respOutput_V_user_V, i8* %respOutput_V_keep_V, i1* %respOutput_V_last_V, i64 %p_Result_20, i112 0, i8 %tmp_keep_V_4, i1 %tmp_last_V_2)
  br label %._crit_edge937

._crit_edge945:                                   ; preds = %24, %23
  %tmp_112 = icmp ult i16 %valueLength_load, 5
  br i1 %tmp_112, label %29, label %._crit_edge949

; <label>:29                                      ; preds = %._crit_edge945
  %tmp_154 = trunc i16 %valueLength_load to i3
  %tmp_118 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_154, i3 0)
  %Hi_assign = add i6 -1, %tmp_118
  %Hi_assign_1 = add i6 31, %tmp_118
  %tmp_155 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %Hi_assign_1, i32 5)
  %rev = xor i1 %tmp_155, true
  %tmp_156 = zext i6 %Hi_assign_1 to i7
  %tmp_157 = call i64 @llvm.part.select.i64(i64 %p_Val2_12, i32 63, i32 0)
  %tmp_158 = sub i7 32, %tmp_156
  %tmp_159 = add i7 -32, %tmp_156
  %tmp_160 = select i1 %rev, i7 %tmp_158, i7 %tmp_159
  %tmp_161 = select i1 %rev, i64 %tmp_157, i64 %p_Val2_12
  %tmp_162 = sub i7 63, %tmp_160
  %tmp_163 = zext i7 %tmp_162 to i64
  %st = call i33 @_ssdm_op_PartSelect.i33.i64.i32.i32(i64 %tmp_161, i32 31, i32 63)
  %tmp_164 = zext i33 %st to i64
  %sf = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %tmp_161, i32 32, i32 63)
  %tmp_165 = zext i32 %sf to i64
  %tmp_166 = select i1 %rev, i64 %tmp_164, i64 %tmp_165
  %tmp_167 = lshr i64 -1, %tmp_163
  %p_Result_21 = and i64 %tmp_166, %tmp_167
  %tmp_169 = sext i6 %Hi_assign to i7
  %tmp_170 = sub i7 63, %tmp_169
  %tmp_171 = zext i7 %tmp_170 to i64
  %tmp_172 = lshr i64 -1, %tmp_171
  %p_Result_22 = and i64 %p_Result_21, %tmp_172
  %tmp_174 = trunc i16 %valueLength_load to i4
  %sel_tmp6_i3 = icmp eq i4 %tmp_174, 4
  %sel_tmp8_i2 = icmp eq i4 %tmp_174, 3
  %sel_tmp10_i2 = icmp eq i4 %tmp_174, 2
  %sel_tmp12_i2 = icmp eq i4 %tmp_174, 1
  %newSel73_cast_cast = select i1 %sel_tmp12_i2, i4 1, i4 3
  %or_cond9 = or i1 %sel_tmp12_i2, %sel_tmp10_i2
  %newSel10 = select i1 %sel_tmp8_i2, i4 7, i4 -1
  %or_cond10 = or i1 %sel_tmp8_i2, %sel_tmp6_i3
  %newSel11 = select i1 %or_cond9, i4 %newSel73_cast_cast, i4 %newSel10
  %newSel81_cast = zext i4 %newSel11 to i5
  %or_cond11 = or i1 %or_cond9, %or_cond10
  %tempOutput_keep_V_4 = select i1 %or_cond11, i5 %newSel81_cast, i5 -1
  %tmp_keep_V_3 = sext i5 %tempOutput_keep_V_4 to i8
  store i16 0, i16* @valueLength, align 2
  store i5 0, i5* @br_outWordCounter, align 1
  call void @_ssdm_op_Write.axis.volatile.i64P.i112P.i8P.i1P(i64* %respOutput_V_data_V, i112* %respOutput_V_user_V, i8* %respOutput_V_keep_V, i1* %respOutput_V_last_V, i64 %p_Result_22, i112 0, i8 %tmp_keep_V_3, i1 true)
  br label %._crit_edge949

._crit_edge949:                                   ; preds = %29, %._crit_edge945
  br label %._crit_edge937

; <label>:30                                      ; preds = %22
  %tmp_109 = icmp eq i4 %tmp_140, 6
  br i1 %tmp_109, label %31, label %32

; <label>:31                                      ; preds = %30
  %tmp_52 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %p_Val2_12, i32 32, i32 63)
  %p_Result_23 = zext i32 %tmp_52 to i64
  %tmp_151 = trunc i16 %valueLength_load to i8
  %sel_tmp_i1 = icmp eq i8 %tmp_151, 7
  %sel_tmp2_i1 = icmp eq i8 %tmp_151, 6
  %sel_tmp4_i1 = icmp eq i8 %tmp_151, 5
  %sel_tmp6_i1 = icmp eq i8 %tmp_151, 4
  %sel_tmp8_i = icmp eq i8 %tmp_151, 3
  %sel_tmp10_i = icmp eq i8 %tmp_151, 2
  %sel_tmp12_i = icmp eq i8 %tmp_151, 1
  %newSel87_cast_cast = select i1 %sel_tmp12_i, i4 1, i4 3
  %or_cond1 = or i1 %sel_tmp12_i, %sel_tmp10_i
  %newSel3 = select i1 %sel_tmp8_i, i4 7, i4 -1
  %or_cond2 = or i1 %sel_tmp8_i, %sel_tmp6_i1
  %newSel91_cast_cast = select i1 %sel_tmp4_i1, i8 31, i8 63
  %or_cond3 = or i1 %sel_tmp4_i1, %sel_tmp2_i1
  %newSel4 = select i1 %sel_tmp_i1, i8 127, i8 -1
  %newSel5 = select i1 %or_cond1, i4 %newSel87_cast_cast, i4 %newSel3
  %newSel95_cast = zext i4 %newSel5 to i8
  %or_cond4 = or i1 %or_cond1, %or_cond2
  %newSel6 = select i1 %or_cond3, i8 %newSel91_cast_cast, i8 %newSel4
  %tempOutput_keep_V_5 = select i1 %or_cond4, i8 %newSel95_cast, i8 %newSel6
  store i16 0, i16* @valueLength, align 2
  store i5 0, i5* @br_outWordCounter, align 1
  call void @_ssdm_op_Write.axis.volatile.i64P.i112P.i8P.i1P(i64* %respOutput_V_data_V, i112* %respOutput_V_user_V, i8* %respOutput_V_keep_V, i1* %respOutput_V_last_V, i64 %p_Result_23, i112 0, i8 %tempOutput_keep_V_5, i1 true)
  br label %34

; <label>:32                                      ; preds = %30
  %tmp_113 = icmp eq i4 %tmp_140, 7
  br i1 %tmp_113, label %33, label %._crit_edge950

; <label>:33                                      ; preds = %32
  store i5 0, i5* @br_outWordCounter, align 1
  call void @_ssdm_op_Write.axis.volatile.i64P.i112P.i8P.i1P(i64* %respOutput_V_data_V, i112* %respOutput_V_user_V, i8* %respOutput_V_keep_V, i1* %respOutput_V_last_V, i64 3544368444630782533, i112 0, i8 -1, i1 true)
  br label %._crit_edge950

._crit_edge950:                                   ; preds = %33, %32
  br label %34

; <label>:34                                      ; preds = %._crit_edge950, %31
  br label %._crit_edge937

._crit_edge937:                                   ; preds = %34, %._crit_edge949, %28, %21, %17, %15, %._crit_edge939, %4, %3
  %xtrasBuffer_V_flag_8 = phi i1 [ false, %3 ], [ true, %4 ], [ false, %._crit_edge939 ], [ false, %15 ], [ true, %21 ], [ false, %17 ], [ false, %34 ], [ true, %28 ], [ false, %._crit_edge949 ]
  %xtrasBuffer_V_new_8 = phi i64 [ undef, %3 ], [ %xtrasBuffer_V_new, %4 ], [ undef, %._crit_edge939 ], [ undef, %15 ], [ %tmp_V_36, %21 ], [ undef, %17 ], [ undef, %34 ], [ %tmp_V_37, %28 ], [ undef, %._crit_edge949 ]
  br i1 %xtrasBuffer_V_flag_8, label %mergeST, label %.new

; <label>:35                                      ; preds = %.new, %._crit_edge936
  ret void

mergeST:                                          ; preds = %._crit_edge937
  store i64 %xtrasBuffer_V_new_8, i64* @xtrasBuffer_V, align 8
  br label %.new

.new:                                             ; preds = %mergeST, %._crit_edge937
  br label %35
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

define internal fastcc void @memcachedPipeline_bp_f(i64* %feInput_V_data_V, i112* %feInput_V_user_V, i8* %feInput_V_keep_V, i1* %feInput_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i1* %feInput_V_last_V, i8* %feInput_V_keep_V, i112* %feInput_V_user_V, i64* %feInput_V_data_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i64* @valueBuffer_rp_V_V, [8 x i8]* @str1550, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1551, [1 x i8]* @str1551, [8 x i8]* @str1550)
  call void (...)* @_ssdm_op_SpecInterface(i64* @keyBuffer_rp_V_V, [8 x i8]* @str1546, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1547, [1 x i8]* @str1547, [8 x i8]* @str1546)
  call void (...)* @_ssdm_op_SpecInterface(i248* @metadataBuffer_rp_V_V, [8 x i8]* @str1542, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1543, [1 x i8]* @str1543, [8 x i8]* @str1542)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str192) nounwind
  %lastValueWord_load = load i1* @lastValueWord, align 1
  %bpf_wordCounter_load = load i4* @bpf_wordCounter, align 1
  %p_Val2_21 = load i64* @valueTempBuffer_V, align 8
  br i1 %lastValueWord_load, label %39, label %0

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i64P.i112P.i8P.i1P(i64* %feInput_V_data_V, i112* %feInput_V_user_V, i8* %feInput_V_keep_V, i1* %feInput_V_last_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge689

; <label>:1                                       ; preds = %0
  %empty = call { i64, i112, i8, i1 } @_ssdm_op_Read.axis.volatile.i64P.i112P.i8P.i1P(i64* %feInput_V_data_V, i112* %feInput_V_user_V, i8* %feInput_V_keep_V, i1* %feInput_V_last_V)
  %tmp_data_V = extractvalue { i64, i112, i8, i1 } %empty, 0
  %tmp_user_V = extractvalue { i64, i112, i8, i1 } %empty, 1
  %tmp_s = icmp eq i4 %bpf_wordCounter_load, 0
  %p_Val2_15 = load i248* @metadataTempBuffer_V, align 16
  %bpf_keyLength_V_load = load i8* @bpf_keyLength_V, align 1
  %keyLengthBuffer_load = load i8* @keyLengthBuffer, align 1
  %bpf_opCode_V_load = load i8* @bpf_opCode_V, align 1
  %protocol_V_load = load i4* @protocol_V, align 1
  %tmp_52 = icmp eq i8 %bpf_opCode_V_load, 4
  %tmp_54 = icmp eq i8 %bpf_opCode_V_load, 0
  %tmp_56 = or i1 %tmp_54, %tmp_52
  br i1 %tmp_s, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_175 = trunc i112 %tmp_user_V to i108
  %loc_V_trunc = zext i108 %tmp_175 to i124
  %p_Result_s = call i248 @llvm.part.set.i248.i124(i248 %p_Val2_15, i124 %loc_V_trunc, i32 124, i32 247)
  store i248 %p_Result_s, i248* @metadataTempBuffer_V, align 16
  %p_Result_s_92 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V, i32 24, i32 31)
  store i8 %p_Result_s_92, i8* @bpf_keyLength_V, align 1
  store i8 %p_Result_s_92, i8* @keyLengthBuffer, align 1
  %p_Result_8 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V, i32 8, i32 15)
  store i8 %p_Result_8, i8* @bpf_opCode_V, align 1
  %tmp_176 = trunc i64 %tmp_data_V to i4
  store i4 %tmp_176, i4* @protocol_V, align 1
  store i4 1, i4* @bpf_wordCounter, align 1
  br label %38

; <label>:3                                       ; preds = %1
  %tmp_120 = icmp eq i4 %bpf_wordCounter_load, 1
  %bpf_valueLengthBuffer_V_load = load i17* @bpf_valueLengthBuffer_V, align 4
  br i1 %tmp_120, label %4, label %5

; <label>:4                                       ; preds = %3
  %p_Result_i = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V, i32 24, i32 31)
  %p_Result_2_i = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V, i32 16, i32 23)
  %tmp_177 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_data_V, i32 8)
  %tmp_121 = call i17 @_ssdm_op_BitConcatenate.i17.i1.i8.i8(i1 %tmp_177, i8 %p_Result_2_i, i8 %p_Result_i)
  %tmp_122 = zext i8 %keyLengthBuffer_load to i17
  %tmp_123 = sub i17 %tmp_121, %tmp_122
  store i17 %tmp_123, i17* @bpf_valueLengthBuffer_V, align 4
  %p_Result_36 = call i248 @llvm.part.set.i248.i4(i248 %p_Val2_15, i4 %protocol_V_load, i32 120, i32 123)
  %p_Result_37 = call i248 @llvm.part.set.i248.i8(i248 %p_Result_36, i8 %bpf_opCode_V_load, i32 104, i32 111)
  %tmp_178 = trunc i64 %tmp_data_V to i30
  %p_Result_38 = call i248 @llvm.part.set.i248.i30(i248 %p_Result_37, i30 %tmp_178, i32 56, i32 85)
  %tmp_53 = call i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17 %tmp_123, i8 %bpf_keyLength_V_load)
  %p_Result_39 = call i248 @_ssdm_op_PartSet.i248.i248.i25.i32.i32(i248 %p_Result_38, i25 %tmp_53, i32 0, i32 24)
  store i248 %p_Result_39, i248* @metadataTempBuffer_V, align 16
  call void @_ssdm_op_Write.ap_fifo.volatile.i248P(i248* @metadataBuffer_rp_V_V, i248 %p_Result_39)
  store i4 2, i4* @bpf_wordCounter, align 1
  br label %37

; <label>:5                                       ; preds = %3
  %tmp_124 = icmp eq i4 %bpf_wordCounter_load, 2
  br i1 %tmp_124, label %6, label %13

; <label>:6                                       ; preds = %5
  %tmp_125 = icmp eq i8 %bpf_opCode_V_load, 1
  br i1 %tmp_125, label %7, label %8

; <label>:7                                       ; preds = %6
  store i4 3, i4* @bpf_wordCounter, align 1
  br label %12

; <label>:8                                       ; preds = %6
  %tmp_179 = icmp eq i8 %bpf_opCode_V_load, 4
  %tmp_180 = icmp eq i8 %bpf_opCode_V_load, 0
  %tmp_181 = or i1 %tmp_180, %tmp_179
  br i1 %tmp_181, label %._crit_edge691, label %9

._crit_edge691:                                   ; preds = %8
  %tmp_185 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %keyLengthBuffer_load, i32 3, i32 7)
  %icmp = icmp ne i5 %tmp_185, 0
  %tmp_186 = select i1 %icmp, i4 4, i4 5
  store i4 %tmp_186, i4* @bpf_wordCounter, align 1
  br label %11

; <label>:9                                       ; preds = %8
  %tmp_129 = icmp eq i8 %bpf_opCode_V_load, 8
  br i1 %tmp_129, label %10, label %._crit_edge694

; <label>:10                                      ; preds = %9
  store i4 0, i4* @bpf_wordCounter, align 1
  br label %._crit_edge694

._crit_edge694:                                   ; preds = %10, %9
  br label %11

; <label>:11                                      ; preds = %._crit_edge694, %._crit_edge691
  br label %12

; <label>:12                                      ; preds = %11, %7
  br label %36

; <label>:13                                      ; preds = %5
  %tmp_126 = icmp eq i4 %bpf_wordCounter_load, 3
  br i1 %tmp_126, label %14, label %15

; <label>:14                                      ; preds = %13
  %tmp_182 = trunc i64 %tmp_data_V to i32
  %p_Result_40 = zext i32 %tmp_182 to i64
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @valueBuffer_rp_V_V, i64 %p_Result_40)
  %tmp_127 = add i17 -8, %bpf_valueLengthBuffer_V_load
  store i17 %tmp_127, i17* @bpf_valueLengthBuffer_V, align 4
  %tmp_183 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %keyLengthBuffer_load, i32 3, i32 7)
  %icmp6 = icmp ne i5 %tmp_183, 0
  %tmp_184 = select i1 %icmp6, i4 4, i4 5
  store i4 %tmp_184, i4* @bpf_wordCounter, align 1
  br label %35

; <label>:15                                      ; preds = %13
  %tmp_128 = icmp eq i4 %bpf_wordCounter_load, 4
  %valueShift_load = load i8* @valueShift, align 1
  br i1 %tmp_128, label %16, label %22

; <label>:16                                      ; preds = %15
  %tmp_130 = icmp eq i8 %keyLengthBuffer_load, 8
  br i1 %tmp_130, label %._crit_edge698, label %17

._crit_edge698:                                   ; preds = %16
  %storemerge_cast_cast_cast_cast = select i1 %tmp_56, i4 0, i4 6
  store i4 %storemerge_cast_cast_cast_cast, i4* @bpf_wordCounter, align 1
  store i8 0, i8* @valueShift, align 1
  br label %21

; <label>:17                                      ; preds = %16
  %tmp_187 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %keyLengthBuffer_load, i32 3, i32 7)
  %icmp7 = icmp eq i5 %tmp_187, 0
  br i1 %icmp7, label %18, label %19

; <label>:18                                      ; preds = %17
  store i4 0, i4* @bpf_wordCounter, align 1
  br label %20

; <label>:19                                      ; preds = %17
  %tmp_188 = call i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8 %keyLengthBuffer_load, i32 4, i32 7)
  %icmp8 = icmp eq i4 %tmp_188, 0
  br i1 %icmp8, label %._crit_edge702, label %._crit_edge699

._crit_edge702:                                   ; preds = %19
  %tmp_217 = select i1 %tmp_56, i4 4, i4 5
  store i4 %tmp_217, i4* @bpf_wordCounter, align 1
  br label %._crit_edge699

._crit_edge699:                                   ; preds = %._crit_edge702, %19
  br label %20

; <label>:20                                      ; preds = %._crit_edge699, %18
  br label %21

; <label>:21                                      ; preds = %20, %._crit_edge698
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @keyBuffer_rp_V_V, i64 %tmp_data_V)
  %tmp_144 = add i8 %keyLengthBuffer_load, -8
  store i8 %tmp_144, i8* @keyLengthBuffer, align 1
  br label %34

; <label>:22                                      ; preds = %15
  %tmp_131 = icmp eq i4 %bpf_wordCounter_load, 5
  br i1 %tmp_131, label %23, label %28

; <label>:23                                      ; preds = %22
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @keyBuffer_rp_V_V, i64 %tmp_data_V)
  %tmp_132 = icmp eq i8 %bpf_opCode_V_load, 1
  br i1 %tmp_132, label %_ifconv, label %27

_ifconv:                                          ; preds = %23
  %tmp_189 = trunc i8 %keyLengthBuffer_load to i5
  %tmp_134 = sub i5 8, %tmp_189
  %tmp_190 = trunc i5 %tmp_134 to i4
  %tmp_135 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_134, i3 0)
  store i8 %tmp_135, i8* @valueShift, align 1
  %tmp_203_cast = zext i8 %keyLengthBuffer_load to i9
  %op2_assign = sub i9 8, %tmp_203_cast
  %op2_assign_cast = sext i9 %op2_assign to i18
  %tmp_204_cast = zext i17 %bpf_valueLengthBuffer_V_load to i18
  %tmp_136 = icmp sgt i18 %tmp_204_cast, %op2_assign_cast
  %p_0283_s = add i9 %tmp_203_cast, -8
  %p_0283_cast = sext i9 %p_0283_s to i17
  %tmp_137 = add i17 %p_0283_cast, %bpf_valueLengthBuffer_V_load
  %storemerge = select i1 %tmp_136, i17 %tmp_137, i17 0
  store i17 %storemerge, i17* @bpf_valueLengthBuffer_V, align 4
  %tmp_138 = icmp eq i17 %storemerge, 0
  br i1 %tmp_138, label %25, label %24

; <label>:24                                      ; preds = %_ifconv
  %tmp_215_cast = zext i8 %tmp_135 to i9
  %tmp_242 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_190, i3 0)
  %Lo_assign = sub i9 64, %tmp_215_cast
  %tmp_243 = call i3 @_ssdm_op_PartSelect.i3.i9.i32.i32(i9 %Lo_assign, i32 6, i32 8)
  %tmp_244 = sext i3 %tmp_243 to i26
  %icmp11 = icmp ne i26 %tmp_244, 0
  %tmp_245 = trunc i9 %Lo_assign to i7
  %tmp_246 = call i64 @llvm.part.select.i64(i64 %tmp_data_V, i32 63, i32 0)
  %tmp_247 = add i7 -63, %tmp_245
  %tmp_248 = sub i7 63, %tmp_245
  %tmp_249 = sub i7 63, %tmp_245
  %tmp_250 = select i1 %icmp11, i7 %tmp_247, i7 %tmp_249
  %tmp_251 = select i1 %icmp11, i64 %tmp_246, i64 %tmp_data_V
  %tmp_252 = select i1 %icmp11, i7 %tmp_248, i7 %tmp_245
  %tmp_253 = sub i7 63, %tmp_250
  %tmp_254 = zext i7 %tmp_252 to i64
  %tmp_255 = zext i7 %tmp_253 to i64
  %tmp_256 = lshr i64 %tmp_251, %tmp_254
  %tmp_257 = lshr i64 -1, %tmp_255
  %p_Result_41 = and i64 %tmp_256, %tmp_257
  %tmp_259 = sub i7 -64, %tmp_242
  %tmp_260 = zext i7 %tmp_259 to i64
  %tmp_261 = lshr i64 -1, %tmp_260
  %tmp_262 = xor i64 %tmp_261, -1
  %tmp_263 = and i64 %p_Val2_21, %tmp_262
  %tmp_264 = and i64 %p_Result_41, %tmp_261
  %p_Result_29 = or i64 %tmp_263, %tmp_264
  br label %26

; <label>:25                                      ; preds = %_ifconv
  %tmp_218 = trunc i8 %keyLengthBuffer_load to i4
  %tmp_219 = trunc i8 %keyLengthBuffer_load to i4
  %Lo_assign_4_cast = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_219, i3 0)
  %tmp_220 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %keyLengthBuffer_load, i32 3, i32 7)
  %tmp_221 = zext i5 %tmp_220 to i26
  %icmp10 = icmp ne i26 %tmp_221, 0
  %tmp_222 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_218, i3 0)
  %tmp_223 = call i64 @llvm.part.select.i64(i64 %tmp_data_V, i32 63, i32 0)
  %tmp_224 = add i7 %tmp_222, -63
  %tmp_225 = sub i7 63, %tmp_222
  %tmp_226 = sub i7 63, %tmp_222
  %tmp_227 = select i1 %icmp10, i7 %tmp_224, i7 %tmp_226
  %tmp_228 = select i1 %icmp10, i64 %tmp_223, i64 %tmp_data_V
  %tmp_229 = select i1 %icmp10, i7 %tmp_225, i7 %tmp_222
  %tmp_230 = sub i7 63, %tmp_227
  %tmp_231 = zext i7 %tmp_229 to i64
  %tmp_232 = zext i7 %tmp_230 to i64
  %tmp_233 = lshr i64 %tmp_228, %tmp_231
  %tmp_234 = lshr i64 -1, %tmp_232
  %p_Result_42 = and i64 %tmp_233, %tmp_234
  %tmp_236 = zext i7 %Lo_assign_4_cast to i64
  %tmp_237 = lshr i64 -1, %tmp_236
  %tmp_238 = xor i64 %tmp_237, -1
  %tmp_239 = and i64 %p_Val2_21, %tmp_238
  %tmp_240 = and i64 %p_Result_42, %tmp_237
  %p_Result_43 = or i64 %tmp_239, %tmp_240
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @valueBuffer_rp_V_V, i64 %p_Result_43)
  br label %26

; <label>:26                                      ; preds = %25, %24
  %valueTempBuffer_V_new = phi i64 [ %p_Result_43, %25 ], [ %p_Result_29, %24 ]
  %storemerge9 = phi i2 [ 0, %25 ], [ -2, %24 ]
  %storemerge28_cast = sext i2 %storemerge9 to i3
  store i8 0, i8* @keyLengthBuffer, align 1
  %storemerge28_cast_cast_cast_ca = zext i3 %storemerge28_cast to i4
  store i4 %storemerge28_cast_cast_cast_ca, i4* @bpf_wordCounter, align 1
  br label %._crit_edge707

; <label>:27                                      ; preds = %23
  %tmp_191 = icmp eq i8 %bpf_opCode_V_load, 4
  %tmp_192 = icmp eq i8 %bpf_opCode_V_load, 0
  %tmp_193 = or i1 %tmp_192, %tmp_191
  br i1 %tmp_193, label %._crit_edge704, label %._crit_edge706

._crit_edge704:                                   ; preds = %27
  store i8 0, i8* @keyLengthBuffer, align 1
  store i4 0, i4* @bpf_wordCounter, align 1
  br label %._crit_edge706

._crit_edge706:                                   ; preds = %27, %._crit_edge704
  br label %._crit_edge707

; <label>:28                                      ; preds = %22
  %tmp_133 = icmp eq i4 %bpf_wordCounter_load, 6
  br i1 %tmp_133, label %29, label %._crit_edge707

; <label>:29                                      ; preds = %28
  %Lo_assign_5_cast = zext i8 %valueShift_load to i9
  %tmp_49 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %valueShift_load, i32 3, i32 7)
  %tmp_206_cast = zext i5 %tmp_49 to i6
  %op2_assign_1 = sub i6 8, %tmp_206_cast
  %op2_assign_1_cast = sext i6 %op2_assign_1 to i18
  %tmp_207_cast = zext i17 %bpf_valueLengthBuffer_V_load to i18
  %tmp_139 = icmp sgt i18 %tmp_207_cast, %op2_assign_1_cast
  %tmp_194 = trunc i8 %valueShift_load to i7
  %tmp_195 = zext i7 %tmp_194 to i64
  %tmp_196 = lshr i64 -1, %tmp_195
  %p_Result_44 = and i64 %tmp_data_V, %tmp_196
  %tmp_198 = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %valueShift_load, i32 6, i32 7)
  %tmp_199 = zext i2 %tmp_198 to i26
  %icmp9 = icmp ne i26 %tmp_199, 0
  %tmp_200 = trunc i8 %valueShift_load to i7
  %tmp_201 = sub i7 63, %tmp_200
  %tmp_202 = select i1 %icmp9, i7 63, i7 %tmp_200
  %tmp_203 = select i1 %icmp9, i7 %tmp_201, i7 %tmp_200
  %p_op = sub i7 63, %tmp_200
  %tmp_204 = select i1 %icmp9, i7 %p_op, i7 0
  %tmp_205 = zext i7 %tmp_203 to i64
  %tmp_206 = zext i7 %tmp_202 to i64
  %tmp_207 = zext i7 %tmp_204 to i64
  %tmp_208 = shl i64 %p_Result_44, %tmp_205
  %tmp_209 = call i64 @llvm.part.select.i64(i64 %tmp_208, i32 63, i32 0)
  %tmp_210 = select i1 %icmp9, i64 %tmp_209, i64 %tmp_208
  %tmp_211 = shl i64 -1, %tmp_206
  %tmp_212 = lshr i64 -1, %tmp_207
  %p_demorgan = and i64 %tmp_211, %tmp_212
  %tmp_213 = xor i64 %p_demorgan, -1
  %tmp_214 = and i64 %p_Val2_21, %tmp_213
  %tmp_215 = and i64 %tmp_210, %p_demorgan
  %p_Result_45 = or i64 %tmp_214, %tmp_215
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @valueBuffer_rp_V_V, i64 %p_Result_45)
  br i1 %tmp_139, label %31, label %30

; <label>:30                                      ; preds = %29
  store i4 0, i4* @bpf_wordCounter, align 1
  br label %._crit_edge710

; <label>:31                                      ; preds = %29
  %tmp_140 = icmp eq i8 %valueShift_load, 0
  br i1 %tmp_140, label %._crit_edge708, label %32

; <label>:32                                      ; preds = %31
  %tmp_266 = trunc i17 %bpf_valueLengthBuffer_V_load to i16
  %tmp_141 = zext i8 %keyLengthBuffer_load to i16
  %valueTemp = sub i16 %tmp_266, %tmp_141
  %tmp_267 = trunc i8 %valueShift_load to i7
  %Lo_assign_4 = sub i9 64, %Lo_assign_5_cast
  %tmp_268 = call i3 @_ssdm_op_PartSelect.i3.i9.i32.i32(i9 %Lo_assign_4, i32 6, i32 8)
  %tmp_269 = sext i3 %tmp_268 to i26
  %icmp12 = icmp ne i26 %tmp_269, 0
  %tmp_270 = trunc i9 %Lo_assign_4 to i7
  %tmp_271 = call i64 @llvm.part.select.i64(i64 %tmp_data_V, i32 63, i32 0)
  %tmp_272 = add i7 -63, %tmp_270
  %tmp_273 = sub i7 63, %tmp_270
  %tmp_274 = sub i7 63, %tmp_270
  %tmp_275 = select i1 %icmp12, i7 %tmp_272, i7 %tmp_274
  %tmp_276 = select i1 %icmp12, i64 %tmp_271, i64 %tmp_data_V
  %tmp_277 = select i1 %icmp12, i7 %tmp_273, i7 %tmp_270
  %tmp_278 = sub i7 63, %tmp_275
  %tmp_279 = zext i7 %tmp_277 to i64
  %tmp_280 = zext i7 %tmp_278 to i64
  %tmp_281 = lshr i64 %tmp_276, %tmp_279
  %tmp_282 = lshr i64 -1, %tmp_280
  %p_Result_46 = and i64 %tmp_281, %tmp_282
  %tmp_284 = sub i7 -64, %tmp_267
  %tmp_285 = zext i7 %tmp_284 to i64
  %tmp_286 = lshr i64 -1, %tmp_285
  %tmp_287 = xor i64 %tmp_286, -1
  %tmp_288 = and i64 %p_Result_45, %tmp_287
  %tmp_289 = and i64 %p_Result_46, %tmp_286
  %p_Result_35 = or i64 %tmp_288, %tmp_289
  %tmp_142 = icmp ugt i16 %valueTemp, 8
  %tmp_143 = icmp eq i16 %tmp_266, %tmp_141
  %or_cond = or i1 %tmp_142, %tmp_143
  br i1 %or_cond, label %._crit_edge709, label %33

; <label>:33                                      ; preds = %32
  store i1 true, i1* @lastValueWord, align 1
  br label %._crit_edge709

._crit_edge709:                                   ; preds = %33, %32
  br label %._crit_edge708

._crit_edge708:                                   ; preds = %._crit_edge709, %31
  %valueTempBuffer_V_new_2 = phi i64 [ %p_Result_45, %31 ], [ %p_Result_35, %._crit_edge709 ]
  %tmp_145 = icmp ugt i17 %bpf_valueLengthBuffer_V_load, 8
  %tmp_146 = add i17 %bpf_valueLengthBuffer_V_load, -8
  %tmp_330_s = select i1 %tmp_145, i17 %tmp_146, i17 0
  br label %._crit_edge710

._crit_edge710:                                   ; preds = %._crit_edge708, %30
  %valueTempBuffer_V_new_3 = phi i64 [ %valueTempBuffer_V_new_2, %._crit_edge708 ], [ %p_Result_45, %30 ]
  %storemerge1 = phi i17 [ %tmp_330_s, %._crit_edge708 ], [ 0, %30 ]
  store i17 %storemerge1, i17* @bpf_valueLengthBuffer_V, align 4
  br label %._crit_edge707

._crit_edge707:                                   ; preds = %._crit_edge710, %28, %._crit_edge706, %26
  %valueTempBuffer_V_flag_5 = phi i1 [ true, %26 ], [ false, %._crit_edge706 ], [ true, %._crit_edge710 ], [ false, %28 ]
  %valueTempBuffer_V_new_5 = phi i64 [ %valueTempBuffer_V_new, %26 ], [ undef, %._crit_edge706 ], [ %valueTempBuffer_V_new_3, %._crit_edge710 ], [ undef, %28 ]
  br i1 %valueTempBuffer_V_flag_5, label %mergeST, label %.new

; <label>:34                                      ; preds = %.new, %21
  br label %35

; <label>:35                                      ; preds = %34, %14
  br label %36

; <label>:36                                      ; preds = %35, %12
  br label %37

; <label>:37                                      ; preds = %36, %4
  br label %38

; <label>:38                                      ; preds = %37, %2
  br label %._crit_edge689

._crit_edge689:                                   ; preds = %38, %0
  br label %40

; <label>:39                                      ; preds = %codeRepl
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @valueBuffer_rp_V_V, i64 %p_Val2_21)
  store i1 false, i1* @lastValueWord, align 1
  store i4 0, i4* @bpf_wordCounter, align 1
  br label %40

; <label>:40                                      ; preds = %39, %._crit_edge689
  ret void

mergeST:                                          ; preds = %._crit_edge707
  store i64 %valueTempBuffer_V_new_5, i64* @valueTempBuffer_V, align 8
  br label %.new

.new:                                             ; preds = %mergeST, %._crit_edge707
  br label %34
}

define internal fastcc void @memcachedPipeline_bp_r() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i64* @valueBuffer_rp_V_V, [8 x i8]* @str1550, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1551, [1 x i8]* @str1551, [8 x i8]* @str1550)
  call void (...)* @_ssdm_op_SpecInterface(i64* @keyBuffer_rp_V_V, [8 x i8]* @str1546, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1547, [1 x i8]* @str1547, [8 x i8]* @str1546)
  call void (...)* @_ssdm_op_SpecInterface(i248* @metadataBuffer_rp_V_V, [8 x i8]* @str1542, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1543, [1 x i8]* @str1543, [8 x i8]* @str1542)
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1202, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1203, [1 x i8]* @str1203, [8 x i8]* @str1202) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1198, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1199, [1 x i8]* @str1199, [8 x i8]* @str1198) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1194, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1195, [1 x i8]* @str1195, [8 x i8]* @str1194) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1190, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1191, [1 x i8]* @str1191, [8 x i8]* @str1190) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1186, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1187, [1 x i8]* @str1187, [8 x i8]* @str1186) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1182, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1183, [1 x i8]* @str1183, [8 x i8]* @str1182) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1178, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1179, [1 x i8]* @str1179, [8 x i8]* @str1178) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str192) nounwind
  %binaryParserRearState_load = load i2* @binaryParserRearState, align 1
  %p_Val2_23 = load i248* @outMetadataBuffer_V, align 16
  %bpr_opCode_load = load i8* @bpr_opCode, align 1
  %bpr_valueLength_load = load i16* @bpr_valueLength, align 2
  %bpr_keyLength_load = load i8* @bpr_keyLength, align 1
  switch i2 %binaryParserRearState_load, label %._crit_edge328 [
    i2 0, label %0
    i2 1, label %2
    i2 -2, label %7
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i248P(i248* @metadataBuffer_rp_V_V, i32 1) nounwind
  br i1 %tmp, label %1, label %._crit_edge329

; <label>:1                                       ; preds = %0
  %tmp_V = call i248 @_ssdm_op_Read.ap_fifo.volatile.i248P(i248* @metadataBuffer_rp_V_V) nounwind
  store i248 %tmp_V, i248* @outMetadataBuffer_V, align 16
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i248.i32.i32(i248 %tmp_V, i32 104, i32 111)
  store i8 %p_Result_s, i8* @bpr_opCode, align 1
  store i2 1, i2* @binaryParserRearState, align 1
  br label %._crit_edge329

._crit_edge329:                                   ; preds = %1, %0
  br label %._crit_edge328

; <label>:2                                       ; preds = %codeRepl
  %tmp_s = icmp eq i8 %bpr_opCode_load, 8
  br i1 %tmp_s, label %._crit_edge330, label %3

; <label>:3                                       ; preds = %2
  %tmp_45 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @keyBuffer_rp_V_V, i32 1) nounwind
  br i1 %tmp_45, label %4, label %._crit_edge328

; <label>:4                                       ; preds = %3
  %tmp_148 = icmp eq i8 %bpr_opCode_load, 1
  br i1 %tmp_148, label %5, label %._crit_edge330

; <label>:5                                       ; preds = %4
  %tmp_47 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @valueBuffer_rp_V_V, i32 1) nounwind
  br i1 %tmp_47, label %._crit_edge330, label %._crit_edge328

._crit_edge330:                                   ; preds = %5, %4, %2
  %bpr_opCode_load_3 = phi i8 [ 1, %5 ], [ %bpr_opCode_load, %4 ], [ %bpr_opCode_load, %2 ]
  %tmp_291 = trunc i248 %p_Val2_23 to i8
  %tmp_150 = icmp eq i8 %bpr_opCode_load_3, 8
  br i1 %tmp_150, label %._crit_edge337, label %6

; <label>:6                                       ; preds = %._crit_edge330
  %tmp_V_44 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @keyBuffer_rp_V_V) nounwind
  br label %._crit_edge337

._crit_edge337:                                   ; preds = %6, %._crit_edge330
  %tempOutput_key_V = phi i64 [ %tmp_V_44, %6 ], [ 0, %._crit_edge330 ]
  %p_Result_s_93 = call i16 @_ssdm_op_PartSelect.i16.i248.i32.i32(i248 %p_Val2_23, i32 8, i32 23)
  %tempOutput_metadata_V_2 = trunc i248 %p_Val2_23 to i124
  %tmp_151 = icmp ult i8 %tmp_291, 9
  %tmp_152 = add i8 -8, %tmp_291
  %storemerge2 = select i1 %tmp_151, i8 0, i8 %tmp_152
  store i8 %storemerge2, i8* @bpr_keyLength, align 1
  %tmp_153 = icmp eq i8 %bpr_opCode_load_3, 1
  br i1 %tmp_153, label %._crit_edge340, label %._crit_edge339

._crit_edge340:                                   ; preds = %._crit_edge337
  %tmp_V_45 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @valueBuffer_rp_V_V) nounwind
  %tmp_156 = icmp ugt i16 %p_Result_s_93, 8
  %tmp_157 = add i16 %p_Result_s_93, -8
  %storemerge4 = select i1 %tmp_156, i16 %tmp_157, i16 0
  br label %._crit_edge339

._crit_edge339:                                   ; preds = %._crit_edge340, %._crit_edge337
  %bpr_valueLength_new = phi i16 [ %storemerge4, %._crit_edge340 ], [ %p_Result_s_93, %._crit_edge337 ]
  %tmp_valueValid_V = phi i1 [ true, %._crit_edge340 ], [ false, %._crit_edge337 ]
  %tmp_value_V = phi i64 [ %tmp_V_45, %._crit_edge340 ], [ 0, %._crit_edge337 ]
  %tmp78 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i2.i124(i64 %tempOutput_key_V, i64 %tmp_value_V, i1 false, i1 %tmp_valueValid_V, i2 -1, i124 %tempOutput_metadata_V_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @requestParser2hashTable_V, i256 %tmp78) nounwind
  store i2 -2, i2* @binaryParserRearState, align 1
  br label %._crit_edge328

; <label>:7                                       ; preds = %codeRepl
  %tmp_147 = icmp eq i8 %bpr_keyLength_load, 0
  br i1 %tmp_147, label %._crit_edge341, label %8

; <label>:8                                       ; preds = %7
  %tmp_46 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @keyBuffer_rp_V_V, i32 1) nounwind
  br i1 %tmp_46, label %._crit_edge341, label %._crit_edge328

._crit_edge341:                                   ; preds = %8, %7
  %tmp_149 = icmp eq i16 %bpr_valueLength_load, 0
  br i1 %tmp_149, label %._crit_edge345, label %9

; <label>:9                                       ; preds = %._crit_edge341
  %tmp_48 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @valueBuffer_rp_V_V, i32 1) nounwind
  br i1 %tmp_48, label %._crit_edge345, label %._crit_edge328

._crit_edge345:                                   ; preds = %9, %._crit_edge341
  br i1 %tmp_147, label %._crit_edge349, label %._crit_edge350

._crit_edge350:                                   ; preds = %._crit_edge345
  %tmp_V_46 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @keyBuffer_rp_V_V) nounwind
  %tmp_154 = icmp ugt i8 %bpr_keyLength_load, 8
  %tmp_155 = add i8 %bpr_keyLength_load, -8
  %storemerge3 = select i1 %tmp_154, i8 %tmp_155, i8 0
  store i8 %storemerge3, i8* @bpr_keyLength, align 1
  br label %._crit_edge349

._crit_edge349:                                   ; preds = %._crit_edge350, %._crit_edge345
  %bpr_keyLength_load_4 = phi i8 [ %storemerge3, %._crit_edge350 ], [ %bpr_keyLength_load, %._crit_edge345 ]
  %tmp_keyValid_V = phi i1 [ true, %._crit_edge350 ], [ false, %._crit_edge345 ]
  %tmp_key_V_11 = phi i64 [ %tmp_V_46, %._crit_edge350 ], [ 0, %._crit_edge345 ]
  br i1 %tmp_149, label %._crit_edge351_ifconv, label %._crit_edge352

._crit_edge352:                                   ; preds = %._crit_edge349
  %tmp_V_47 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @valueBuffer_rp_V_V) nounwind
  %tmp_158 = icmp ugt i16 %bpr_valueLength_load, 8
  %tmp_159 = add i16 %bpr_valueLength_load, -8
  %storemerge = select i1 %tmp_158, i16 %tmp_159, i16 0
  br label %._crit_edge351_ifconv

._crit_edge351_ifconv:                            ; preds = %._crit_edge352, %._crit_edge349
  %tmp_valueValid_V_5 = phi i1 [ false, %._crit_edge349 ], [ true, %._crit_edge352 ]
  %tmp_160 = phi i16 [ %bpr_valueLength_load, %._crit_edge349 ], [ %storemerge, %._crit_edge352 ]
  %tmp_value_V_7 = phi i64 [ 0, %._crit_edge349 ], [ %tmp_V_47, %._crit_edge352 ]
  %bpr_wordCounter_V_load = load i1* @bpr_wordCounter_V, align 1
  %tempOutput_metadata_V = call i124 @_ssdm_op_PartSelect.i124.i248.i32.i32(i248 %p_Val2_23, i32 124, i32 247)
  %not_bpr_wordCounter_V_load = xor i1 %bpr_wordCounter_V_load, true
  %tmp_metadata_V_11 = select i1 %bpr_wordCounter_V_load, i124 0, i124 %tempOutput_metadata_V
  %notlhs = icmp ne i8 %bpr_keyLength_load_4, 0
  %notrhs = icmp ne i16 %tmp_160, 0
  %or_cond = or i1 %notrhs, %notlhs
  br i1 %or_cond, label %._crit_edge354, label %10

; <label>:10                                      ; preds = %._crit_edge351_ifconv
  store i2 0, i2* @binaryParserRearState, align 1
  br label %._crit_edge354

._crit_edge354:                                   ; preds = %10, %._crit_edge351_ifconv
  %bpr_wordCounter_V_flag_1 = phi i1 [ %not_bpr_wordCounter_V_load, %._crit_edge351_ifconv ], [ true, %10 ]
  %bpr_wordCounter_V_new_1 = phi i1 [ true, %._crit_edge351_ifconv ], [ false, %10 ]
  %tmp_EOP_V = phi i1 [ false, %._crit_edge351_ifconv ], [ true, %10 ]
  %tmp_1 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i1.i124(i64 %tmp_key_V_11, i64 %tmp_value_V_7, i1 %tmp_EOP_V, i1 %tmp_valueValid_V_5, i1 %tmp_keyValid_V, i1 false, i124 %tmp_metadata_V_11)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @requestParser2hashTable_V, i256 %tmp_1) nounwind
  br i1 %bpr_wordCounter_V_flag_1, label %mergeST113, label %._crit_edge354.new

._crit_edge328:                                   ; preds = %._crit_edge354.new, %9, %8, %._crit_edge339, %5, %3, %._crit_edge329, %codeRepl
  %bpr_valueLength_flag_4 = phi i1 [ false, %codeRepl ], [ false, %._crit_edge329 ], [ true, %._crit_edge339 ], [ false, %5 ], [ false, %3 ], [ %tmp_valueValid_V_5, %._crit_edge354.new ], [ false, %9 ], [ false, %8 ]
  %bpr_valueLength_new_4 = phi i16 [ undef, %codeRepl ], [ undef, %._crit_edge329 ], [ %bpr_valueLength_new, %._crit_edge339 ], [ undef, %5 ], [ undef, %3 ], [ %tmp_160, %._crit_edge354.new ], [ undef, %9 ], [ undef, %8 ]
  br i1 %bpr_valueLength_flag_4, label %mergeST, label %._crit_edge328.new

mergeST:                                          ; preds = %._crit_edge328
  store i16 %bpr_valueLength_new_4, i16* @bpr_valueLength, align 2
  br label %._crit_edge328.new

._crit_edge328.new:                               ; preds = %mergeST, %._crit_edge328
  ret void

mergeST113:                                       ; preds = %._crit_edge354
  store i1 %bpr_wordCounter_V_new_1, i1* @bpr_wordCounter_V, align 1
  br label %._crit_edge354.new

._crit_edge354.new:                               ; preds = %mergeST113, %._crit_edge354
  br label %._crit_edge328
}

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

define internal fastcc void @memcachedPipeline_ht_inputLogic() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i8* @in2hashKeyLength_V_V, [8 x i8]* @str1606, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1607, [1 x i8]* @str1607, [8 x i8]* @str1606)
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2hash_V, [8 x i8]* @str1602, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1603, [1 x i8]* @str1603, [8 x i8]* @str1602) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2hash_V, [8 x i8]* @str1598, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1599, [1 x i8]* @str1599, [8 x i8]* @str1598) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2hash_V, [8 x i8]* @str1594, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1595, [1 x i8]* @str1595, [8 x i8]* @str1594) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1590, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1591, [1 x i8]* @str1591, [8 x i8]* @str1590) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1586, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1587, [1 x i8]* @str1587, [8 x i8]* @str1586) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1582, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1583, [1 x i8]* @str1583, [8 x i8]* @str1582) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1578, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1579, [1 x i8]* @str1579, [8 x i8]* @str1578) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2cc_V, [8 x i8]* @str1574, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1575, [1 x i8]* @str1575, [8 x i8]* @str1574) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2cc_V, [8 x i8]* @str1570, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1571, [1 x i8]* @str1571, [8 x i8]* @str1570) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2cc_V, [8 x i8]* @str1566, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1567, [1 x i8]* @str1567, [8 x i8]* @str1566) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @hashMdBuffer_V_V, [8 x i8]* @str1562, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1563, [1 x i8]* @str1563, [8 x i8]* @str1562)
  call void (...)* @_ssdm_op_SpecInterface(i64* @hashValueBuffer_V_V, [8 x i8]* @str1558, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1559, [1 x i8]* @str1559, [8 x i8]* @str1558)
  call void (...)* @_ssdm_op_SpecInterface(i64* @hashKeyBuffer_V_V, [8 x i8]* @str1554, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1555, [1 x i8]* @str1555, [8 x i8]* @str1554)
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1202, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1203, [1 x i8]* @str1203, [8 x i8]* @str1202) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1198, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1199, [1 x i8]* @str1199, [8 x i8]* @str1198) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1194, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1195, [1 x i8]* @str1195, [8 x i8]* @str1194) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1190, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1191, [1 x i8]* @str1191, [8 x i8]* @str1190) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1186, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1187, [1 x i8]* @str1187, [8 x i8]* @str1186) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1182, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1183, [1 x i8]* @str1183, [8 x i8]* @str1182) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1178, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1179, [1 x i8]* @str1179, [8 x i8]* @str1178) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str271, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1272, [1 x i8]* @p_str1272, [1 x i8]* @p_str1272) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1272) nounwind
  %iState_load = load i1* @iState, align 1
  %tmp_keyLength_V = load i8* @bufferWordMd_keyLength_V, align 1
  %wordCounter_V_1_load = load i2* @wordCounter_V_1, align 1
  %keyLength_V_load = load i8* @keyLength_V, align 1
  %keyWordCounter_V_load = load i2* @keyWordCounter_V, align 1
  %p_Val2_24 = load i128* @bufferWord_data_V, align 8
  %tmp_49 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256* @requestParser2hashTable_V, i32 1) nounwind
  br i1 %iState_load, label %8, label %0

; <label>:0                                       ; preds = %codeRepl
  br i1 %tmp_49, label %1, label %._crit_edge1044

; <label>:1                                       ; preds = %0
  %tmp213 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @requestParser2hashTable_V) nounwind
  %p_Val2_s = trunc i256 %tmp213 to i124
  %tmp_295 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp213, i32 124)
  %tmp_296 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp213, i32 126)
  %tmp_V_52 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp213, i32 128, i32 191)
  %tmp_V_54 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp213, i32 192, i32 255)
  br i1 %tmp_295, label %_ifconv, label %7

_ifconv:                                          ; preds = %1
  %tmp_operation_V_1 = call i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256 %tmp213, i32 104, i32 111)
  store i8 %tmp_operation_V_1, i8* @bufferWordMd_operation_V, align 4
  %tmp_valueLength_V_1 = call i16 @_ssdm_op_PartSelect.i16.i256.i32.i32(i256 %tmp213, i32 8, i32 23)
  store i16 %tmp_valueLength_V_1, i16* @bufferWordMd_valueLength_V, align 2
  %tmp_s = icmp eq i8 %tmp_operation_V_1, 8
  %tmp_298 = trunc i256 %tmp213 to i8
  %tmp_V_55 = select i1 %tmp_s, i8 1, i8 %tmp_298
  store i2 1, i2* @keyWordCounter_V, align 1
  %tmp_161 = icmp eq i8 %tmp_V_55, 0
  br i1 %tmp_161, label %._crit_edge1046, label %2

; <label>:2                                       ; preds = %_ifconv
  br i1 %tmp_s, label %._crit_edge1047, label %3

; <label>:3                                       ; preds = %2
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @hashKeyBuffer_V_V, i64 %tmp_V_54) nounwind
  br label %._crit_edge1047

._crit_edge1047:                                  ; preds = %3, %2
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* @in2hashKeyLength_V_V, i8 %tmp_V_55) nounwind
  %tmp_165 = icmp ult i8 %tmp_V_55, 9
  br i1 %tmp_165, label %4, label %5

; <label>:4                                       ; preds = %._crit_edge1047
  %tmp_338 = trunc i8 %tmp_V_55 to i4
  %tmp_169 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_338, i3 0)
  %Hi_assign = add i7 -1, %tmp_169
  %tmp_339 = sub i7 -64, %tmp_169
  %tmp_340 = zext i7 %tmp_339 to i64
  %tmp_341 = lshr i64 -1, %tmp_340
  %p_Result_53 = and i64 %tmp_V_54, %tmp_341
  %loc_V = zext i64 %p_Result_53 to i128
  %tmp_343 = sext i7 %Hi_assign to i8
  %tmp_344 = sub i8 127, %tmp_343
  %tmp_345 = zext i8 %tmp_344 to i128
  %tmp_346 = lshr i128 -1, %tmp_345
  %tmp_347 = xor i128 %tmp_346, -1
  %tmp_348 = and i128 %p_Val2_24, %tmp_347
  %tmp_349 = and i128 %loc_V, %tmp_346
  %p_Result_54 = or i128 %tmp_348, %tmp_349
  store i128 %p_Result_54, i128* @bufferWord_data_V, align 16
  %tmp_1 = call i130 @_ssdm_op_BitConcatenate.i130.i2.i128(i2 -1, i128 %p_Result_54)
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @in2cc_V, i130 %tmp_1) nounwind
  %tmp_2 = call i64 @_ssdm_op_BitConcatenate.i64.i16.i8.i32.i8(i16 %tmp_valueLength_V_1, i8 %tmp_V_55, i32 0, i8 %tmp_operation_V_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @in2ccMd_V, i64 %tmp_2) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @in2hash_V, i130 %tmp_1) nounwind
  br label %._crit_edge1046

; <label>:5                                       ; preds = %._crit_edge1047
  %p_Result_s = call i128 @llvm.part.set.i128.i64(i128 %p_Val2_24, i64 %tmp_V_54, i32 0, i32 63)
  store i128 %p_Result_s, i128* @bufferWord_data_V, align 16
  %tmp_170 = add i8 %tmp_V_55, -8
  br label %._crit_edge1046

._crit_edge1046:                                  ; preds = %5, %4, %_ifconv
  %keyLength_V_new = phi i8 [ %tmp_V_55, %_ifconv ], [ %tmp_170, %5 ], [ 0, %4 ]
  br i1 %tmp_296, label %6, label %._crit_edge1048

; <label>:6                                       ; preds = %._crit_edge1046
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @hashValueBuffer_V_V, i64 %tmp_V_52) nounwind
  br label %._crit_edge1048

._crit_edge1048:                                  ; preds = %6, %._crit_edge1046
  %tmp_61 = call i3 @_ssdm_op_PartSelect.i3.i256.i32.i32(i256 %tmp213, i32 125, i32 127)
  %p_Result_55 = call i128 @_ssdm_op_BitConcatenate.i128.i3.i1.i124(i3 %tmp_61, i1 true, i124 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @hashMdBuffer_V_V, i128 %p_Result_55) nounwind
  store i1 true, i1* @iState, align 1
  br label %mergeST

; <label>:7                                       ; preds = %1
  store i2 0, i2* @keyWordCounter_V, align 1
  br label %mergeST

; <label>:8                                       ; preds = %codeRepl
  br i1 %tmp_49, label %9, label %._crit_edge1044

; <label>:9                                       ; preds = %8
  %tmp_4 = call i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256* @requestParser2hashTable_V) nounwind
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_4, i32 126)
  %tmp_293 = call i1 @_ssdm_op_BitSelect.i1.i256.i32(i256 %tmp_4, i32 127)
  %tmp_V = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_4, i32 128, i32 191)
  %tmp_V_50 = call i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256 %tmp_4, i32 192, i32 255)
  br i1 %tmp, label %10, label %._crit_edge1050

; <label>:10                                      ; preds = %9
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @hashValueBuffer_V_V, i64 %tmp_V) nounwind
  br label %._crit_edge1050

._crit_edge1050:                                  ; preds = %10, %9
  %tmp_297 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %wordCounter_V_1_load, i32 1)
  br i1 %tmp_297, label %._crit_edge1051, label %11

; <label>:11                                      ; preds = %._crit_edge1050
  %p_Result_56 = trunc i256 %tmp_4 to i128
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* @hashMdBuffer_V_V, i128 %p_Result_56) nounwind
  %tmp_162 = add i2 1, %wordCounter_V_1_load
  br label %._crit_edge1051

._crit_edge1051:                                  ; preds = %._crit_edge1050, %11
  %wordCounter_V_1_flag_2 = phi i1 [ true, %11 ], [ false, %._crit_edge1050 ]
  %wordCounter_V_1_new_2 = phi i2 [ %tmp_162, %11 ], [ undef, %._crit_edge1050 ]
  %tmp_163 = icmp eq i8 %keyLength_V_load, 0
  br i1 %tmp_163, label %._crit_edge1052, label %12

; <label>:12                                      ; preds = %._crit_edge1051
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @hashKeyBuffer_V_V, i64 %tmp_V_50) nounwind
  %tmp_164 = icmp ult i8 %keyLength_V_load, 9
  %Lo_assign = call i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2 %keyWordCounter_V_load, i6 0)
  br i1 %tmp_164, label %13, label %14

; <label>:13                                      ; preds = %12
  %Lo_assign_cast1 = zext i8 %Lo_assign to i9
  %Lo_assign_cast = zext i8 %Lo_assign to i32
  %tmp_300 = trunc i8 %keyLength_V_load to i4
  %tmp_166 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_300, i3 0)
  %tmp_167 = add i7 -1, %tmp_166
  %tmp_250_cast = sext i7 %tmp_167 to i9
  %Hi_assign_9 = add i9 %tmp_250_cast, %Lo_assign_cast1
  %Hi_assign_11_cast = sext i9 %Hi_assign_9 to i32
  %loc_V_3 = zext i64 %tmp_V_50 to i128
  %tmp_301 = icmp ugt i32 %Lo_assign_cast, %Hi_assign_11_cast
  %tmp_302 = trunc i9 %Hi_assign_9 to i8
  %tmp_303 = sub i8 127, %Lo_assign
  %tmp_304 = select i1 %tmp_301, i8 %Lo_assign, i8 %tmp_302
  %tmp_305 = select i1 %tmp_301, i8 %tmp_302, i8 %Lo_assign
  %tmp_306 = select i1 %tmp_301, i8 %tmp_303, i8 %Lo_assign
  %tmp_307 = sub i8 127, %tmp_304
  %tmp_308 = zext i8 %tmp_306 to i128
  %tmp_309 = zext i8 %tmp_305 to i128
  %tmp_310 = zext i8 %tmp_307 to i128
  %tmp_311 = shl i128 %loc_V_3, %tmp_308
  %tmp_312 = call i128 @llvm.part.select.i128(i128 %tmp_311, i32 127, i32 0)
  %tmp_313 = select i1 %tmp_301, i128 %tmp_312, i128 %tmp_311
  %tmp_314 = shl i128 -1, %tmp_309
  %tmp_315 = lshr i128 -1, %tmp_310
  %p_demorgan2 = and i128 %tmp_314, %tmp_315
  %tmp_316 = xor i128 %p_demorgan2, -1
  %tmp_317 = and i128 %p_Val2_24, %tmp_316
  %tmp_318 = and i128 %tmp_313, %p_demorgan2
  %p_Result_57 = or i128 %tmp_317, %tmp_318
  store i128 %p_Result_57, i128* @bufferWord_data_V, align 16
  %tmp_5 = call i130 @_ssdm_op_BitConcatenate.i130.i2.i128(i2 -2, i128 %p_Result_57)
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @in2cc_V, i130 %tmp_5) nounwind
  %tmp_operation_V = load i8* @bufferWordMd_operation_V, align 4
  %tmp_valueLength_V = load i16* @bufferWordMd_valueLength_V, align 2
  %tmp_6 = call i64 @_ssdm_op_BitConcatenate.i64.i16.i8.i32.i8(i16 %tmp_valueLength_V, i8 %tmp_keyLength_V, i32 0, i8 %tmp_operation_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @in2ccMd_V, i64 %tmp_6) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @in2hash_V, i130 %tmp_5) nounwind
  br label %._crit_edge1052

; <label>:14                                      ; preds = %12
  %Hi_assign_s = or i8 %Lo_assign, 63
  %loc_V_4 = zext i64 %tmp_V_50 to i128
  %tmp_320 = icmp ugt i8 %Lo_assign, %Hi_assign_s
  %tmp_321 = sub i8 127, %Lo_assign
  %tmp_322 = select i1 %tmp_320, i8 %Lo_assign, i8 %Hi_assign_s
  %tmp_323 = select i1 %tmp_320, i8 %Hi_assign_s, i8 %Lo_assign
  %tmp_324 = select i1 %tmp_320, i8 %tmp_321, i8 %Lo_assign
  %tmp_325 = sub i8 127, %tmp_322
  %tmp_326 = zext i8 %tmp_324 to i128
  %tmp_327 = zext i8 %tmp_323 to i128
  %tmp_328 = zext i8 %tmp_325 to i128
  %tmp_329 = shl i128 %loc_V_4, %tmp_326
  %tmp_330 = call i128 @llvm.part.select.i128(i128 %tmp_329, i32 127, i32 0)
  %tmp_331 = select i1 %tmp_320, i128 %tmp_330, i128 %tmp_329
  %tmp_332 = shl i128 -1, %tmp_327
  %tmp_333 = lshr i128 -1, %tmp_328
  %p_demorgan = and i128 %tmp_332, %tmp_333
  %tmp_334 = xor i128 %p_demorgan, -1
  %tmp_335 = and i128 %p_Val2_24, %tmp_334
  %tmp_336 = and i128 %tmp_331, %p_demorgan
  %p_Result_58 = or i128 %tmp_335, %tmp_336
  store i128 %p_Result_58, i128* @bufferWord_data_V, align 16
  %tmp_168 = icmp eq i2 %keyWordCounter_V_load, 1
  br i1 %tmp_168, label %15, label %16

; <label>:15                                      ; preds = %14
  %tmp_8 = call i130 @_ssdm_op_BitConcatenate.i130.i2.i128(i2 0, i128 %p_Result_58)
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @in2cc_V, i130 %tmp_8) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @in2hash_V, i130 %tmp_8) nounwind
  br label %17

; <label>:16                                      ; preds = %14
  %tmp_171 = add i2 %keyWordCounter_V_load, 1
  br label %17

; <label>:17                                      ; preds = %16, %15
  %storemerge = phi i2 [ %tmp_171, %16 ], [ 0, %15 ]
  store i2 %storemerge, i2* @keyWordCounter_V, align 1
  %tmp_172 = add i8 %keyLength_V_load, -8
  br label %._crit_edge1052

._crit_edge1052:                                  ; preds = %17, %13, %._crit_edge1051
  %keyLength_V_flag_4 = phi i1 [ false, %._crit_edge1051 ], [ true, %17 ], [ true, %13 ]
  %keyLength_V_new_4 = phi i8 [ undef, %._crit_edge1051 ], [ %tmp_172, %17 ], [ 0, %13 ]
  br i1 %tmp_293, label %18, label %._crit_edge1053

; <label>:18                                      ; preds = %._crit_edge1052
  store i1 false, i1* @iState, align 1
  br label %._crit_edge1053

._crit_edge1053:                                  ; preds = %18, %._crit_edge1052
  br label %._crit_edge1044

._crit_edge1044:                                  ; preds = %mergeST, %._crit_edge1053, %8, %0
  %wordCounter_V_1_flag_4 = phi i1 [ true, %mergeST ], [ false, %0 ], [ %wordCounter_V_1_flag_2, %._crit_edge1053 ], [ false, %8 ]
  %wordCounter_V_1_new_4 = phi i2 [ %wordCounter_V_1_new_cast, %mergeST ], [ undef, %0 ], [ %wordCounter_V_1_new_2, %._crit_edge1053 ], [ undef, %8 ]
  %keyLength_V_flag_6 = phi i1 [ %wordCounter_V_1_new, %mergeST ], [ false, %0 ], [ %keyLength_V_flag_4, %._crit_edge1053 ], [ false, %8 ]
  %keyLength_V_new_6 = phi i8 [ %keyLength_V_new_1, %mergeST ], [ undef, %0 ], [ %keyLength_V_new_4, %._crit_edge1053 ], [ undef, %8 ]
  br i1 %keyLength_V_flag_6, label %mergeST327, label %._crit_edge1044.new328

mergeST:                                          ; preds = %7, %._crit_edge1048
  %bufferWordMd_keyLength_V_new = phi i8 [ %tmp_V_55, %._crit_edge1048 ], [ 0, %7 ]
  %wordCounter_V_1_new = phi i1 [ true, %._crit_edge1048 ], [ false, %7 ]
  %keyLength_V_new_1 = phi i8 [ %keyLength_V_new, %._crit_edge1048 ], [ undef, %7 ]
  %wordCounter_V_1_new_cast = zext i1 %wordCounter_V_1_new to i2
  store i8 %bufferWordMd_keyLength_V_new, i8* @bufferWordMd_keyLength_V, align 1
  br label %._crit_edge1044

mergeST326:                                       ; preds = %._crit_edge1044.new328
  store i2 %wordCounter_V_1_new_4, i2* @wordCounter_V_1, align 1
  br label %._crit_edge1044.new

._crit_edge1044.new:                              ; preds = %._crit_edge1044.new328, %mergeST326
  ret void

mergeST327:                                       ; preds = %._crit_edge1044
  store i8 %keyLength_V_new_6, i8* @keyLength_V, align 1
  br label %._crit_edge1044.new328

._crit_edge1044.new328:                           ; preds = %mergeST327, %._crit_edge1044
  br i1 %wordCounter_V_1_flag_4, label %mergeST326, label %._crit_edge1044.new
}

define internal fastcc void @memcachedPipeline_ht_outputLogic() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1682, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1683, [1 x i8]* @str1683, [8 x i8]* @str1682) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1678, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1679, [1 x i8]* @str1679, [8 x i8]* @str1678) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1674, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1675, [1 x i8]* @str1675, [8 x i8]* @str1674) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1670, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1671, [1 x i8]* @str1671, [8 x i8]* @str1670) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @hashMdBuffer_V_V, [8 x i8]* @str1562, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1563, [1 x i8]* @str1563, [8 x i8]* @str1562)
  call void (...)* @_ssdm_op_SpecInterface(i64* @hashValueBuffer_V_V, [8 x i8]* @str1558, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1559, [1 x i8]* @str1559, [8 x i8]* @str1558)
  call void (...)* @_ssdm_op_SpecInterface(i64* @hashKeyBuffer_V_V, [8 x i8]* @str1554, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1555, [1 x i8]* @str1555, [8 x i8]* @str1554)
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1230, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1231, [1 x i8]* @str1231, [8 x i8]* @str1230) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1226, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1227, [1 x i8]* @str1227, [8 x i8]* @str1226) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1222, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1223, [1 x i8]* @str1223, [8 x i8]* @str1222) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1218, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1219, [1 x i8]* @str1219, [8 x i8]* @str1218) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1214, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1215, [1 x i8]* @str1215, [8 x i8]* @str1214) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1210, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1211, [1 x i8]* @str1211, [8 x i8]* @str1210) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1206, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1207, [1 x i8]* @str1207, [8 x i8]* @str1206) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str271, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1272, [1 x i8]* @p_str1272, [1 x i8]* @p_str1272) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1272) nounwind
  %olState_load = load i2* @olState, align 1
  %ol_keyLength_V_load = load i8* @ol_keyLength_V, align 1
  %ol_valueLength_V_load = load i16* @ol_valueLength_V, align 2
  switch i2 %olState_load, label %._crit_edge798 [
    i2 0, label %0
    i2 -2, label %7
    i2 -1, label %11
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i57P(i57* @memWr2out_V, i32 1) nounwind
  br i1 %tmp, label %1, label %._crit_edge798

; <label>:1                                       ; preds = %0
  %tmp_51 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i128P(i128* @hashMdBuffer_V_V, i32 1) nounwind
  br i1 %tmp_51, label %2, label %._crit_edge798

; <label>:2                                       ; preds = %1
  %tmp139 = call i57 @_ssdm_op_Read.ap_fifo.volatile.i57P(i57* @memWr2out_V) nounwind
  %tmp_valueLength_V_load_new = call i16 @_ssdm_op_PartSelect.i16.i57.i32.i32(i57 %tmp139, i32 32, i32 47)
  %tmp_operation_V_load_new = call i8 @_ssdm_op_PartSelect.i8.i57.i32.i32(i57 %tmp139, i32 48, i32 55)
  %tmp_351 = call i1 @_ssdm_op_BitSelect.i1.i57.i32(i57 %tmp139, i32 56)
  %tmp_V = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* @hashMdBuffer_V_V) nounwind
  %tmp_352 = trunc i128 %tmp_V to i8
  %tmp_174 = icmp eq i8 %tmp_352, 0
  br i1 %tmp_174, label %._crit_edge801, label %3

; <label>:3                                       ; preds = %2
  %tmp_54 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @hashKeyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_54, label %._crit_edge801, label %._crit_edge798

._crit_edge801:                                   ; preds = %3, %2
  %tmp_177 = icmp eq i8 %tmp_operation_V_load_new, 1
  br i1 %tmp_177, label %4, label %._crit_edge805

; <label>:4                                       ; preds = %._crit_edge801
  %tmp_57 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @hashValueBuffer_V_V, i32 1) nounwind
  br i1 %tmp_57, label %._crit_edge805, label %._crit_edge798

._crit_edge805:                                   ; preds = %4, %._crit_edge801
  %p_Result_s = trunc i57 %tmp139 to i32
  %tmp_70 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %tmp_V, i32 104, i32 111)
  br i1 %tmp_177, label %._crit_edge809, label %5

; <label>:5                                       ; preds = %._crit_edge805
  %p_Result_12 = call i128 @llvm.part.set.i128.i16(i128 %tmp_V, i16 %tmp_valueLength_V_load_new, i32 8, i32 23)
  br label %6

._crit_edge809:                                   ; preds = %._crit_edge805
  %p_Result_s_94 = call i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128 %tmp_V, i32 8, i32 23)
  %tmp_V_56 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @hashValueBuffer_V_V) nounwind
  %tmp_180 = icmp ugt i16 %p_Result_s_94, 8
  %tmp_181 = add i16 %p_Result_s_94, -8
  %storemerge = select i1 %tmp_180, i16 %tmp_181, i16 0
  store i16 %storemerge, i16* @ol_valueLength_V, align 2
  br label %6

; <label>:6                                       ; preds = %._crit_edge809, %5
  %p_Val2_27 = phi i128 [ %p_Result_12, %5 ], [ %tmp_V, %._crit_edge809 ]
  %tmp_value_V = phi i64 [ 0, %5 ], [ %tmp_V_56, %._crit_edge809 ]
  br i1 %tmp_174, label %._crit_edge810, label %._crit_edge811

._crit_edge811:                                   ; preds = %6
  %tmp_V_57 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @hashKeyBuffer_V_V) nounwind
  %tmp_186 = icmp ugt i8 %tmp_352, 8
  %tmp_187 = add i8 %tmp_352, -8
  %tmp_467_s = select i1 %tmp_186, i8 %tmp_187, i8 0
  br label %._crit_edge810

._crit_edge810:                                   ; preds = %._crit_edge811, %6
  %ol_keyLength_V_new = phi i8 [ %tmp_352, %6 ], [ %tmp_467_s, %._crit_edge811 ]
  %tmp_key_V = phi i64 [ 0, %6 ], [ %tmp_V_57, %._crit_edge811 ]
  %tmp_355 = trunc i128 %p_Val2_27 to i72
  %tmp_71 = call i15 @_ssdm_op_PartSelect.i15.i128.i32.i32(i128 %tmp_V, i32 113, i32 127)
  %tmp_1 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i15.i1.i8.i32.i72(i64 %tmp_key_V, i64 %tmp_value_V, i15 %tmp_71, i1 %tmp_351, i8 %tmp_70, i32 %p_Result_s, i72 %tmp_355)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @hashTable2splitter_V, i256 %tmp_1) nounwind
  store i2 -2, i2* @olState, align 1
  br label %._crit_edge798

; <label>:7                                       ; preds = %codeRepl
  %tmp_50 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i128P(i128* @hashMdBuffer_V_V, i32 1) nounwind
  br i1 %tmp_50, label %8, label %._crit_edge798

; <label>:8                                       ; preds = %7
  %tmp_173 = icmp eq i8 %ol_keyLength_V_load, 0
  br i1 %tmp_173, label %._crit_edge813, label %9

; <label>:9                                       ; preds = %8
  %tmp_53 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @hashKeyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_53, label %._crit_edge813, label %._crit_edge798

._crit_edge813:                                   ; preds = %9, %8
  %tmp_176 = icmp eq i16 %ol_valueLength_V_load, 0
  br i1 %tmp_176, label %._crit_edge817, label %10

; <label>:10                                      ; preds = %._crit_edge813
  %tmp_56 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @hashValueBuffer_V_V, i32 1) nounwind
  br i1 %tmp_56, label %._crit_edge817, label %._crit_edge798

._crit_edge817:                                   ; preds = %10, %._crit_edge813
  %tmp_V_58 = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* @hashMdBuffer_V_V) nounwind
  %outputWord_metadata_V = trunc i128 %tmp_V_58 to i124
  br i1 %tmp_173, label %._crit_edge821, label %._crit_edge822

._crit_edge822:                                   ; preds = %._crit_edge817
  %tmp_V_59 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @hashKeyBuffer_V_V) nounwind
  %tmp_182 = icmp ugt i8 %ol_keyLength_V_load, 8
  %tmp_183 = add i8 %ol_keyLength_V_load, -8
  %tmp_462_s = select i1 %tmp_182, i8 %tmp_183, i8 0
  br label %._crit_edge821

._crit_edge821:                                   ; preds = %._crit_edge822, %._crit_edge817
  %tmp_keyValid_V = phi i1 [ false, %._crit_edge817 ], [ true, %._crit_edge822 ]
  %ol_keyLength_V_load_9 = phi i8 [ %ol_keyLength_V_load, %._crit_edge817 ], [ %tmp_462_s, %._crit_edge822 ]
  %tmp_key_V_3 = phi i64 [ 0, %._crit_edge817 ], [ %tmp_V_59, %._crit_edge822 ]
  br i1 %tmp_176, label %._crit_edge823, label %._crit_edge824

._crit_edge824:                                   ; preds = %._crit_edge821
  %tmp_V_60 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @hashValueBuffer_V_V) nounwind
  %tmp_188 = icmp ugt i16 %ol_valueLength_V_load, 8
  %tmp_189 = add i16 %ol_valueLength_V_load, -8
  %tmp_470_s = select i1 %tmp_188, i16 %tmp_189, i16 0
  store i16 %tmp_470_s, i16* @ol_valueLength_V, align 2
  br label %._crit_edge823

._crit_edge823:                                   ; preds = %._crit_edge824, %._crit_edge821
  %tmp_193 = phi i16 [ %tmp_470_s, %._crit_edge824 ], [ %ol_valueLength_V_load, %._crit_edge821 ]
  %tmp_value_V_8 = phi i64 [ %tmp_V_60, %._crit_edge824 ], [ 0, %._crit_edge821 ]
  %tmp_valueValid_V = phi i1 [ true, %._crit_edge824 ], [ false, %._crit_edge821 ]
  %tmp_194 = icmp eq i16 %tmp_193, 0
  %tmp_195 = icmp eq i8 %ol_keyLength_V_load_9, 0
  %tmp_EOP_V = and i1 %tmp_194, %tmp_195
  %not_tmp_EOP_V_demorgan = and i1 %tmp_194, %tmp_195
  %not_tmp_EOP_V = xor i1 %not_tmp_EOP_V_demorgan, true
  %storemerge34_cast = select i1 %not_tmp_EOP_V, i2 -1, i2 0
  store i2 %storemerge34_cast, i2* @olState, align 1
  %tmp_2 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i1.i124(i64 %tmp_key_V_3, i64 %tmp_value_V_8, i1 %tmp_EOP_V, i1 %tmp_valueValid_V, i1 %tmp_keyValid_V, i1 false, i124 %outputWord_metadata_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @hashTable2splitter_V, i256 %tmp_2) nounwind
  br label %._crit_edge798

; <label>:11                                      ; preds = %codeRepl
  %tmp_s = icmp eq i8 %ol_keyLength_V_load, 0
  br i1 %tmp_s, label %._crit_edge828, label %12

; <label>:12                                      ; preds = %11
  %tmp_52 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @hashKeyBuffer_V_V, i32 1) nounwind
  br i1 %tmp_52, label %._crit_edge828, label %._crit_edge798

._crit_edge828:                                   ; preds = %12, %11
  %tmp_175 = icmp eq i16 %ol_valueLength_V_load, 0
  br i1 %tmp_175, label %._crit_edge832, label %13

; <label>:13                                      ; preds = %._crit_edge828
  %tmp_55 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @hashValueBuffer_V_V, i32 1) nounwind
  br i1 %tmp_55, label %._crit_edge832, label %._crit_edge798

._crit_edge832:                                   ; preds = %13, %._crit_edge828
  br i1 %tmp_s, label %._crit_edge836, label %._crit_edge837

._crit_edge837:                                   ; preds = %._crit_edge832
  %tmp_V_61 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @hashKeyBuffer_V_V) nounwind
  %tmp_178 = icmp ugt i8 %ol_keyLength_V_load, 8
  %tmp_179 = add i8 %ol_keyLength_V_load, -8
  %tmp_459_s = select i1 %tmp_178, i8 %tmp_179, i8 0
  br label %._crit_edge836

._crit_edge836:                                   ; preds = %._crit_edge837, %._crit_edge832
  %tmp_keyValid_V_14 = phi i1 [ false, %._crit_edge832 ], [ true, %._crit_edge837 ]
  %ol_keyLength_V_load_8 = phi i8 [ %ol_keyLength_V_load, %._crit_edge832 ], [ %tmp_459_s, %._crit_edge837 ]
  %tmp_key_V_12 = phi i64 [ 0, %._crit_edge832 ], [ %tmp_V_61, %._crit_edge837 ]
  br i1 %tmp_175, label %._crit_edge838, label %._crit_edge839

._crit_edge839:                                   ; preds = %._crit_edge836
  %tmp_V_62 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @hashValueBuffer_V_V) nounwind
  %tmp_184 = icmp ugt i16 %ol_valueLength_V_load, 8
  %tmp_185 = add i16 %ol_valueLength_V_load, -8
  %tmp_469_s = select i1 %tmp_184, i16 %tmp_185, i16 0
  store i16 %tmp_469_s, i16* @ol_valueLength_V, align 2
  br label %._crit_edge838

._crit_edge838:                                   ; preds = %._crit_edge839, %._crit_edge836
  %tmp_190 = phi i16 [ %tmp_469_s, %._crit_edge839 ], [ %ol_valueLength_V_load, %._crit_edge836 ]
  %tmp_value_V_9 = phi i64 [ %tmp_V_62, %._crit_edge839 ], [ 0, %._crit_edge836 ]
  %tmp_valueValid_V_6 = phi i1 [ true, %._crit_edge839 ], [ false, %._crit_edge836 ]
  %tmp_191 = icmp eq i16 %tmp_190, 0
  %tmp_192 = icmp eq i8 %ol_keyLength_V_load_8, 0
  %or_cond = and i1 %tmp_191, %tmp_192
  br i1 %or_cond, label %14, label %._crit_edge840

; <label>:14                                      ; preds = %._crit_edge838
  store i2 0, i2* @olState, align 1
  br label %._crit_edge840

._crit_edge840:                                   ; preds = %14, %._crit_edge838
  %tmp_EOP_V_15 = phi i1 [ true, %14 ], [ false, %._crit_edge838 ]
  %tmp_3 = call i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i125(i64 %tmp_key_V_12, i64 %tmp_value_V_9, i1 %tmp_EOP_V_15, i1 %tmp_valueValid_V_6, i1 %tmp_keyValid_V_14, i125 0)
  call void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256* @hashTable2splitter_V, i256 %tmp_3) nounwind
  br label %._crit_edge798

._crit_edge798:                                   ; preds = %._crit_edge840, %13, %12, %._crit_edge823, %10, %9, %7, %._crit_edge810, %4, %3, %1, %0, %codeRepl
  %ol_keyLength_V_flag_7 = phi i1 [ false, %codeRepl ], [ false, %1 ], [ false, %0 ], [ true, %._crit_edge810 ], [ true, %4 ], [ true, %3 ], [ %tmp_keyValid_V, %._crit_edge823 ], [ false, %10 ], [ false, %9 ], [ false, %7 ], [ %tmp_keyValid_V_14, %._crit_edge840 ], [ false, %13 ], [ false, %12 ]
  %ol_keyLength_V_new_7 = phi i8 [ undef, %codeRepl ], [ undef, %1 ], [ undef, %0 ], [ %ol_keyLength_V_new, %._crit_edge810 ], [ %tmp_352, %4 ], [ %tmp_352, %3 ], [ %ol_keyLength_V_load_9, %._crit_edge823 ], [ undef, %10 ], [ undef, %9 ], [ undef, %7 ], [ %ol_keyLength_V_load_8, %._crit_edge840 ], [ undef, %13 ], [ undef, %12 ]
  br i1 %ol_keyLength_V_flag_7, label %mergeST, label %._crit_edge798.new

mergeST:                                          ; preds = %._crit_edge798
  store i8 %ol_keyLength_V_new_7, i8* @ol_keyLength_V, align 1
  br label %._crit_edge798.new

._crit_edge798.new:                               ; preds = %mergeST, %._crit_edge798
  ret void
}

declare i128 @llvm.part.set.i128.i64(i128, i64, i32, i32) nounwind readnone

define internal fastcc void @memcachedPipeline_bobj() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecInterface(i32* @resizedInitValue_V, [8 x i8]* @str1730, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1731, [1 x i8]* @str1731, [8 x i8]* @str1730)
  call void (...)* @_ssdm_op_SpecInterface(i32* @resizedKeyLength_V, [8 x i8]* @str1726, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1727, [1 x i8]* @str1727, [8 x i8]* @str1726)
  call void (...)* @_ssdm_op_SpecInterface(i96* @resizedKey_V_V, [8 x i8]* @str1722, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1723, [1 x i8]* @str1723, [8 x i8]* @str1722)
  call void (...)* @_ssdm_op_SpecInterface(i32* @hash2cc_V_V, [8 x i8]* @str1610, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1611, [1 x i8]* @str1611, [8 x i8]* @str1610)
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 10, [1 x i8]* @p_str308) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str308) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1309, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str308, [1 x i8]* @p_str308, [1 x i8]* @p_str308) nounwind
  %hashState_load = load i4* @hashState, align 1
  %length_load = load i64* @length_r, align 8
  %tmp_V_64 = load i32* @c, align 4
  %b_load = load i32* @b, align 4
  %a_load = load i32* @a, align 4
  switch i4 %hashState_load, label %._crit_edge [
    i4 0, label %1
    i4 1, label %4
    i4 2, label %6
    i4 3, label %7
    i4 4, label %8
    i4 5, label %9
    i4 6, label %26
    i4 7, label %27
    i4 -8, label %28
    i4 -7, label %29
  ]

; <label>:1                                       ; preds = %0
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i32P(i32* @resizedKeyLength_V, i32 1) nounwind
  br i1 %tmp, label %2, label %._crit_edge454

; <label>:2                                       ; preds = %1
  %tmp_59 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i32P(i32* @resizedInitValue_V, i32 1) nounwind
  br i1 %tmp_59, label %3, label %._crit_edge454

; <label>:3                                       ; preds = %2
  %tmp_370 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* @resizedKeyLength_V) nounwind
  %tmp_258 = zext i32 %tmp_370 to i64
  store i64 %tmp_258, i64* @length_r, align 8
  %tmp_384 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* @resizedInitValue_V) nounwind
  %tmp1 = add i32 %tmp_370, -559038737
  %tmp_259 = add i32 %tmp_384, %tmp1
  store i32 %tmp_259, i32* @c, align 4
  store i32 %tmp_259, i32* @b, align 4
  store i32 %tmp_259, i32* @a, align 4
  %tmp_260 = icmp ugt i32 %tmp_370, 12
  %storemerge35_cast_cast_cast = select i1 %tmp_260, i4 1, i4 5
  store i4 %storemerge35_cast_cast_cast, i4* @hashState, align 1
  br label %._crit_edge454

._crit_edge454:                                   ; preds = %3, %2, %1
  br label %._crit_edge

; <label>:4                                       ; preds = %0
  %tmp_58 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i96P(i96* @resizedKey_V_V, i32 1) nounwind
  br i1 %tmp_58, label %5, label %._crit_edge456

; <label>:5                                       ; preds = %4
  %tmp_V_77 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_368 = trunc i96 %tmp_V_77 to i32
  %p_Result_s = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_V_77, i32 32, i32 63)
  %tmp_250 = add i32 %b_load, %p_Result_s
  store i32 %tmp_250, i32* @b, align 4
  %p_Result_13 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_V_77, i32 64, i32 95)
  %tmp_251 = add i32 %tmp_V_64, %p_Result_13
  %tmp_252 = add i32 %a_load, %tmp_368
  %tmp_253 = sub i32 %tmp_252, %tmp_251
  %tmp_369 = trunc i32 %tmp_251 to i28
  %tmp_254 = call i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32 %tmp_251, i32 28, i32 31)
  %tmp_255 = call i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28 %tmp_369, i4 %tmp_254)
  %tmp_256 = xor i32 %tmp_255, %tmp_253
  store i32 %tmp_256, i32* @a, align 4
  %tmp_257 = add i32 %tmp_251, %tmp_250
  store i32 %tmp_257, i32* @c, align 4
  store i4 2, i4* @hashState, align 1
  br label %._crit_edge456

._crit_edge456:                                   ; preds = %5, %4
  br label %._crit_edge

; <label>:6                                       ; preds = %0
  %tmp_s = sub i32 %b_load, %a_load
  %tmp_356 = trunc i32 %a_load to i26
  %tmp_196 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %a_load, i32 26, i32 31)
  %tmp_197 = call i32 @_ssdm_op_BitConcatenate.i32.i26.i6(i26 %tmp_356, i6 %tmp_196)
  %tmp_198 = xor i32 %tmp_s, %tmp_197
  %tmp_199 = add i32 %tmp_V_64, %a_load
  store i32 %tmp_199, i32* @a, align 4
  %tmp_200 = sub i32 %tmp_V_64, %tmp_198
  %tmp_357 = trunc i32 %tmp_198 to i24
  %tmp_201 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_198, i32 24, i32 31)
  %tmp_202 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %tmp_357, i8 %tmp_201)
  %tmp_203 = xor i32 %tmp_202, %tmp_200
  store i32 %tmp_203, i32* @c, align 4
  %tmp_204 = add i32 %tmp_198, %tmp_199
  store i32 %tmp_204, i32* @b, align 4
  store i4 3, i4* @hashState, align 1
  br label %._crit_edge

; <label>:7                                       ; preds = %0
  %tmp_205 = sub i32 %a_load, %tmp_V_64
  %tmp_358 = trunc i32 %tmp_V_64 to i16
  %tmp_206 = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %tmp_V_64, i32 16, i32 31)
  %tmp_207 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %tmp_358, i16 %tmp_206)
  %tmp_208 = xor i32 %tmp_205, %tmp_207
  %tmp_209 = add i32 %b_load, %tmp_V_64
  store i32 %tmp_209, i32* @c, align 4
  %tmp_210 = sub i32 %b_load, %tmp_208
  %tmp_359 = trunc i32 %tmp_208 to i13
  %tmp_211 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %tmp_208, i32 13, i32 31)
  %tmp_212 = call i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13 %tmp_359, i19 %tmp_211)
  %tmp_213 = xor i32 %tmp_212, %tmp_210
  store i32 %tmp_213, i32* @b, align 4
  %tmp_214 = add i32 %tmp_208, %tmp_209
  store i32 %tmp_214, i32* @a, align 4
  store i4 4, i4* @hashState, align 1
  br label %._crit_edge

; <label>:8                                       ; preds = %0
  %tmp_215 = sub i32 %tmp_V_64, %b_load
  %tmp_360 = trunc i32 %b_load to i28
  %tmp_216 = call i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32 %b_load, i32 28, i32 31)
  %tmp_217 = call i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28 %tmp_360, i4 %tmp_216)
  %tmp_218 = xor i32 %tmp_215, %tmp_217
  store i32 %tmp_218, i32* @c, align 4
  %tmp_219 = add i32 %b_load, %a_load
  store i32 %tmp_219, i32* @b, align 4
  %tmp_220 = add i64 -12, %length_load
  store i64 %tmp_220, i64* @length_r, align 8
  %tmp_221 = icmp ugt i64 %tmp_220, 12
  %storemerge_cast_cast_cast = select i1 %tmp_221, i4 1, i4 5
  store i4 %storemerge_cast_cast_cast, i4* @hashState, align 1
  br label %._crit_edge

; <label>:9                                       ; preds = %0
  %tmp_222 = icmp eq i64 %length_load, 0
  br i1 %tmp_222, label %10, label %11

; <label>:10                                      ; preds = %9
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* @hash2cc_V_V, i32 %tmp_V_64) nounwind
  store i4 0, i4* @hashState, align 1
  br label %25

; <label>:11                                      ; preds = %9
  %tmp_60 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i96P(i96* @resizedKey_V_V, i32 1) nounwind
  br i1 %tmp_60, label %12, label %._crit_edge457

; <label>:12                                      ; preds = %11
  switch i64 %length_load, label %._crit_edge458 [
    i64 12, label %13
    i64 11, label %14
    i64 10, label %15
    i64 9, label %16
    i64 8, label %17
    i64 7, label %18
    i64 6, label %19
    i64 5, label %20
    i64 4, label %21
    i64 3, label %22
    i64 2, label %23
    i64 1, label %24
  ]

; <label>:13                                      ; preds = %12
  %tmp_V_78 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_372 = trunc i96 %tmp_V_78 to i32
  %tmp_261 = add i32 %tmp_372, %a_load
  store i32 %tmp_261, i32* @a, align 4
  %p_Result_14 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_V_78, i32 32, i32 63)
  %tmp_262 = add i32 %p_Result_14, %b_load
  store i32 %tmp_262, i32* @b, align 4
  %p_Result_15 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_V_78, i32 64, i32 95)
  %tmp_263 = add i32 %p_Result_15, %tmp_V_64
  store i32 %tmp_263, i32* @c, align 4
  br label %._crit_edge458

; <label>:14                                      ; preds = %12
  %tmp_V_79 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_373 = trunc i96 %tmp_V_79 to i32
  %tmp_264 = add i32 %tmp_373, %a_load
  store i32 %tmp_264, i32* @a, align 4
  %p_Result_16 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_V_79, i32 32, i32 63)
  %tmp_265 = add i32 %p_Result_16, %b_load
  store i32 %tmp_265, i32* @b, align 4
  %temp_cast = call i24 @_ssdm_op_PartSelect.i24.i96.i32.i32(i96 %tmp_V_79, i32 64, i32 87)
  %tmp_367_cast = zext i24 %temp_cast to i32
  %tmp_266 = add i32 %tmp_367_cast, %tmp_V_64
  store i32 %tmp_266, i32* @c, align 4
  br label %._crit_edge458

; <label>:15                                      ; preds = %12
  %tmp_V_80 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_374 = trunc i96 %tmp_V_80 to i32
  %tmp_267 = add i32 %tmp_374, %a_load
  store i32 %tmp_267, i32* @a, align 4
  %p_Result_17 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_V_80, i32 32, i32 63)
  %tmp_268 = add i32 %p_Result_17, %b_load
  store i32 %tmp_268, i32* @b, align 4
  %temp_1_cast = call i16 @_ssdm_op_PartSelect.i16.i96.i32.i32(i96 %tmp_V_80, i32 64, i32 79)
  %tmp_371_cast = zext i16 %temp_1_cast to i32
  %tmp_269 = add i32 %tmp_371_cast, %tmp_V_64
  store i32 %tmp_269, i32* @c, align 4
  br label %._crit_edge458

; <label>:16                                      ; preds = %12
  %tmp_V_81 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_375 = trunc i96 %tmp_V_81 to i32
  %tmp_270 = add i32 %tmp_375, %a_load
  store i32 %tmp_270, i32* @a, align 4
  %p_Result_18 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_V_81, i32 32, i32 63)
  %tmp_271 = add i32 %p_Result_18, %b_load
  store i32 %tmp_271, i32* @b, align 4
  %temp_2_cast = call i8 @_ssdm_op_PartSelect.i8.i96.i32.i32(i96 %tmp_V_81, i32 64, i32 71)
  %tmp_375_cast = zext i8 %temp_2_cast to i32
  %tmp_272 = add i32 %tmp_375_cast, %tmp_V_64
  store i32 %tmp_272, i32* @c, align 4
  br label %._crit_edge458

; <label>:17                                      ; preds = %12
  %tmp_V_82 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_376 = trunc i96 %tmp_V_82 to i32
  %tmp_273 = add i32 %tmp_376, %a_load
  store i32 %tmp_273, i32* @a, align 4
  %p_Result_19 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_V_82, i32 32, i32 63)
  %tmp_274 = add i32 %p_Result_19, %b_load
  store i32 %tmp_274, i32* @b, align 4
  br label %._crit_edge458

; <label>:18                                      ; preds = %12
  %tmp_V_83 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_377 = trunc i96 %tmp_V_83 to i32
  %tmp_275 = add i32 %tmp_377, %a_load
  store i32 %tmp_275, i32* @a, align 4
  %temp_3_cast = call i24 @_ssdm_op_PartSelect.i24.i96.i32.i32(i96 %tmp_V_83, i32 32, i32 55)
  %tmp_380_cast = zext i24 %temp_3_cast to i32
  %tmp_276 = add i32 %tmp_380_cast, %b_load
  store i32 %tmp_276, i32* @b, align 4
  br label %._crit_edge458

; <label>:19                                      ; preds = %12
  %tmp_V_84 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_378 = trunc i96 %tmp_V_84 to i32
  %tmp_277 = add i32 %tmp_378, %a_load
  store i32 %tmp_277, i32* @a, align 4
  %temp_4_cast = call i16 @_ssdm_op_PartSelect.i16.i96.i32.i32(i96 %tmp_V_84, i32 32, i32 47)
  %tmp_383_cast = zext i16 %temp_4_cast to i32
  %tmp_278 = add i32 %tmp_383_cast, %b_load
  store i32 %tmp_278, i32* @b, align 4
  br label %._crit_edge458

; <label>:20                                      ; preds = %12
  %tmp_V_85 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_379 = trunc i96 %tmp_V_85 to i32
  %tmp_279 = add i32 %tmp_379, %a_load
  store i32 %tmp_279, i32* @a, align 4
  %temp_5_cast = call i8 @_ssdm_op_PartSelect.i8.i96.i32.i32(i96 %tmp_V_85, i32 32, i32 39)
  %tmp_386_cast = zext i8 %temp_5_cast to i32
  %tmp_280 = add i32 %tmp_386_cast, %b_load
  store i32 %tmp_280, i32* @b, align 4
  br label %._crit_edge458

; <label>:21                                      ; preds = %12
  %tmp_V_86 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_380 = trunc i96 %tmp_V_86 to i32
  %tmp_281 = add i32 %tmp_380, %a_load
  store i32 %tmp_281, i32* @a, align 4
  br label %._crit_edge458

; <label>:22                                      ; preds = %12
  %tmp_V_87 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_381 = trunc i96 %tmp_V_87 to i24
  %tmp_389_cast = zext i24 %tmp_381 to i32
  %tmp_282 = add i32 %tmp_389_cast, %a_load
  store i32 %tmp_282, i32* @a, align 4
  br label %._crit_edge458

; <label>:23                                      ; preds = %12
  %tmp_V_88 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_382 = trunc i96 %tmp_V_88 to i16
  %tmp_391_cast = zext i16 %tmp_382 to i32
  %tmp_283 = add i32 %tmp_391_cast, %a_load
  store i32 %tmp_283, i32* @a, align 4
  br label %._crit_edge458

; <label>:24                                      ; preds = %12
  %tmp_V_89 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* @resizedKey_V_V) nounwind
  %tmp_383 = trunc i96 %tmp_V_89 to i8
  %tmp_393_cast = zext i8 %tmp_383 to i32
  %tmp_284 = add i32 %tmp_393_cast, %a_load
  store i32 %tmp_284, i32* @a, align 4
  br label %._crit_edge458

._crit_edge458:                                   ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12
  store i4 6, i4* @hashState, align 1
  br label %._crit_edge457

._crit_edge457:                                   ; preds = %._crit_edge458, %11
  br label %25

; <label>:25                                      ; preds = %._crit_edge457, %10
  br label %._crit_edge

; <label>:26                                      ; preds = %0
  %tmp_223 = xor i32 %tmp_V_64, %b_load
  %tmp_361 = trunc i32 %b_load to i18
  %tmp_224 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %b_load, i32 18, i32 31)
  %tmp_225 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_361, i14 %tmp_224)
  %tmp_226 = sub i32 %tmp_223, %tmp_225
  store i32 %tmp_226, i32* @c, align 4
  %tmp_227 = xor i32 %a_load, %tmp_226
  %tmp_362 = trunc i32 %tmp_226 to i21
  %tmp_228 = call i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32 %tmp_226, i32 21, i32 31)
  %tmp_229 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 %tmp_362, i11 %tmp_228)
  %tmp_230 = sub i32 %tmp_227, %tmp_229
  store i32 %tmp_230, i32* @a, align 4
  store i4 7, i4* @hashState, align 1
  br label %._crit_edge

; <label>:27                                      ; preds = %0
  %tmp_231 = xor i32 %b_load, %a_load
  %tmp_363 = trunc i32 %a_load to i7
  %tmp_232 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %a_load, i32 7, i32 31)
  %tmp_233 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_363, i25 %tmp_232)
  %tmp_234 = sub i32 %tmp_231, %tmp_233
  store i32 %tmp_234, i32* @b, align 4
  %tmp_235 = xor i32 %tmp_V_64, %tmp_234
  %tmp_364 = trunc i32 %tmp_234 to i16
  %tmp_236 = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %tmp_234, i32 16, i32 31)
  %tmp_237 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %tmp_364, i16 %tmp_236)
  %tmp_238 = sub i32 %tmp_235, %tmp_237
  store i32 %tmp_238, i32* @c, align 4
  store i4 -8, i4* @hashState, align 1
  br label %._crit_edge

; <label>:28                                      ; preds = %0
  %tmp_239 = xor i32 %a_load, %tmp_V_64
  %tmp_365 = trunc i32 %tmp_V_64 to i28
  %tmp_240 = call i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32 %tmp_V_64, i32 28, i32 31)
  %tmp_241 = call i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28 %tmp_365, i4 %tmp_240)
  %tmp_242 = sub i32 %tmp_239, %tmp_241
  store i32 %tmp_242, i32* @a, align 4
  %tmp_243 = xor i32 %b_load, %tmp_242
  %tmp_366 = trunc i32 %tmp_242 to i18
  %tmp_244 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %tmp_242, i32 18, i32 31)
  %tmp_245 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_366, i14 %tmp_244)
  %tmp_246 = sub i32 %tmp_243, %tmp_245
  store i32 %tmp_246, i32* @b, align 4
  store i4 -7, i4* @hashState, align 1
  br label %._crit_edge

; <label>:29                                      ; preds = %0
  %tmp_247 = xor i32 %tmp_V_64, %b_load
  %tmp_367 = trunc i32 %b_load to i8
  %tmp_248 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %b_load, i32 8, i32 31)
  %tmp_249 = call i32 @_ssdm_op_BitConcatenate.i32.i8.i24(i8 %tmp_367, i24 %tmp_248)
  %tmp_V = sub i32 %tmp_247, %tmp_249
  store i32 %tmp_V, i32* @c, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* @hash2cc_V_V, i32 %tmp_V) nounwind
  store i4 0, i4* @hashState, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %29, %28, %27, %26, %25, %8, %7, %6, %._crit_edge456, %._crit_edge454, %0
  ret void
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define internal fastcc void @memcachedPipeline_hashKeyResizer() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i32* @resizedInitValue_V, [8 x i8]* @str1730, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1731, [1 x i8]* @str1731, [8 x i8]* @str1730)
  call void (...)* @_ssdm_op_SpecInterface(i32* @resizedKeyLength_V, [8 x i8]* @str1726, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1727, [1 x i8]* @str1727, [8 x i8]* @str1726)
  call void (...)* @_ssdm_op_SpecInterface(i96* @resizedKey_V_V, [8 x i8]* @str1722, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1723, [1 x i8]* @str1723, [8 x i8]* @str1722)
  call void (...)* @_ssdm_op_SpecInterface(i8* @in2hashKeyLength_V_V, [8 x i8]* @str1606, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1607, [1 x i8]* @str1607, [8 x i8]* @str1606)
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2hash_V, [8 x i8]* @str1602, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1603, [1 x i8]* @str1603, [8 x i8]* @str1602) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2hash_V, [8 x i8]* @str1598, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1599, [1 x i8]* @str1599, [8 x i8]* @str1598) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2hash_V, [8 x i8]* @str1594, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1595, [1 x i8]* @str1595, [8 x i8]* @str1594) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1309, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str308, [1 x i8]* @p_str308, [1 x i8]* @p_str308) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str308) nounwind
  %keyResizerState_load = load i3* @keyResizerState, align 1
  %keyResizerLength_V_load = load i8* @keyResizerLength_V, align 1
  %p_Val2_s = load i128* @tempInput_data_V, align 8
  %p_Val2_40 = load i96* @resizedKeyOutput_V, align 8
  switch i3 %keyResizerState_load, label %._crit_edge393 [
    i3 0, label %0
    i3 1, label %4
    i3 2, label %5
    i3 3, label %6
    i3 -4, label %7
    i3 -3, label %10
    i3 -2, label %11
    i3 -1, label %12
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i8P(i8* @in2hashKeyLength_V_V, i32 1) nounwind
  br i1 %tmp, label %1, label %._crit_edge394

; <label>:1                                       ; preds = %0
  %tmp_66 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @in2hash_V, i32 1) nounwind
  br i1 %tmp_66, label %2, label %._crit_edge394

; <label>:2                                       ; preds = %1
  %tmp_V_96 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* @in2hashKeyLength_V_V) nounwind
  store i8 %tmp_V_96, i8* @keyResizerLength_V, align 1
  %tmp90 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @in2hash_V) nounwind
  %p_Val2_44 = trunc i130 %tmp90 to i128
  store i128 %p_Val2_44, i128* @tempInput_data_V, align 16
  %tmp_395 = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp90, i32 129)
  %tmp_67 = zext i8 %tmp_V_96 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* @resizedKeyLength_V, i32 %tmp_67) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* @resizedInitValue_V, i32 13) nounwind
  %tmp_V_97 = trunc i130 %tmp90 to i96
  store i96 %tmp_V_97, i96* @resizedKeyOutput_V, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* @resizedKey_V_V, i96 %tmp_V_97) nounwind
  %tmp_291 = icmp ugt i8 %tmp_V_96, 12
  br i1 %tmp_291, label %3, label %._crit_edge396

; <label>:3                                       ; preds = %2
  %storemerge1 = select i1 %tmp_395, i3 -3, i3 1
  store i3 %storemerge1, i3* @keyResizerState, align 1
  br label %._crit_edge396

._crit_edge396:                                   ; preds = %3, %2
  br label %._crit_edge394

._crit_edge394:                                   ; preds = %._crit_edge396, %1, %0
  br label %._crit_edge393

; <label>:4                                       ; preds = %codeRepl
  %tmp_63 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @in2hash_V, i32 1) nounwind
  br i1 %tmp_63, label %_ifconv, label %._crit_edge397

_ifconv:                                          ; preds = %4
  %tmp_286 = add i8 -16, %keyResizerLength_V_load
  store i8 %tmp_286, i8* @keyResizerLength_V, align 1
  %p_Result_21 = call i32 @_ssdm_op_PartSelect.i32.i128.i32.i32(i128 %p_Val2_s, i32 96, i32 127)
  %tmp_1 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @in2hash_V) nounwind
  %p_Val2_41 = trunc i130 %tmp_1 to i128
  store i128 %p_Val2_41, i128* @tempInput_data_V, align 16
  %tmp_386 = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_1, i32 129)
  %tmp_387 = trunc i130 %tmp_1 to i64
  %p_Result_s = call i96 @_ssdm_op_BitConcatenate.i96.i64.i32(i64 %tmp_387, i32 %p_Result_21)
  store i96 %p_Result_s, i96* @resizedKeyOutput_V, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* @resizedKey_V_V, i96 %p_Result_s) nounwind
  %tmp_287 = icmp ugt i8 %tmp_286, 8
  %storemerge6 = select i1 %tmp_386, i3 -2, i3 2
  %storemerge7 = select i1 %tmp_287, i3 %storemerge6, i3 0
  store i3 %storemerge7, i3* @keyResizerState, align 1
  br label %._crit_edge397

._crit_edge397:                                   ; preds = %_ifconv, %4
  br label %._crit_edge393

; <label>:5                                       ; preds = %codeRepl
  %tmp_64 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @in2hash_V, i32 1) nounwind
  br i1 %tmp_64, label %_ifconv1, label %._crit_edge399

_ifconv1:                                         ; preds = %5
  %tmp_288 = add i8 -16, %keyResizerLength_V_load
  store i8 %tmp_288, i8* @keyResizerLength_V, align 1
  %p_Result_22 = call i64 @_ssdm_op_PartSelect.i64.i128.i32.i32(i128 %p_Val2_s, i32 64, i32 127)
  %tmp_2 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @in2hash_V) nounwind
  %p_Val2_42 = trunc i130 %tmp_2 to i128
  store i128 %p_Val2_42, i128* @tempInput_data_V, align 16
  %tmp_389 = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_2, i32 129)
  %tmp_390 = trunc i130 %tmp_2 to i32
  %p_Result_59 = call i96 @_ssdm_op_BitConcatenate.i96.i32.i64(i32 %tmp_390, i64 %p_Result_22)
  store i96 %p_Result_59, i96* @resizedKeyOutput_V, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* @resizedKey_V_V, i96 %p_Result_59) nounwind
  %tmp_289 = icmp ugt i8 %tmp_288, 4
  %storemerge8 = select i1 %tmp_389, i3 -1, i3 3
  %storemerge9 = select i1 %tmp_289, i3 %storemerge8, i3 0
  store i3 %storemerge9, i3* @keyResizerState, align 1
  br label %._crit_edge399

._crit_edge399:                                   ; preds = %_ifconv1, %5
  br label %._crit_edge393

; <label>:6                                       ; preds = %codeRepl
  %tmp_s = add i8 %keyResizerLength_V_load, -16
  store i8 %tmp_s, i8* @keyResizerLength_V, align 1
  %tmp_V = call i96 @_ssdm_op_PartSelect.i96.i128.i32.i32(i128 %p_Val2_s, i32 32, i32 127)
  store i96 %tmp_V, i96* @resizedKeyOutput_V, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* @resizedKey_V_V, i96 %tmp_V) nounwind
  %tmp_285 = icmp eq i8 %tmp_s, 0
  %storemerge5 = select i1 %tmp_285, i3 0, i3 -4
  store i3 %storemerge5, i3* @keyResizerState, align 1
  br label %._crit_edge393

; <label>:7                                       ; preds = %codeRepl
  %tmp_65 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @in2hash_V, i32 1) nounwind
  br i1 %tmp_65, label %8, label %._crit_edge401

; <label>:8                                       ; preds = %7
  %tmp_3 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @in2hash_V) nounwind
  %p_Val2_43 = trunc i130 %tmp_3 to i128
  store i128 %p_Val2_43, i128* @tempInput_data_V, align 16
  %tmp_392 = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_3, i32 129)
  %tmp_V_95 = trunc i130 %tmp_3 to i96
  store i96 %tmp_V_95, i96* @resizedKeyOutput_V, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* @resizedKey_V_V, i96 %tmp_V_95) nounwind
  %tmp_290 = icmp ugt i8 %keyResizerLength_V_load, 12
  br i1 %tmp_290, label %9, label %._crit_edge402

; <label>:9                                       ; preds = %8
  %storemerge = select i1 %tmp_392, i3 -3, i3 1
  store i3 %storemerge, i3* @keyResizerState, align 1
  br label %._crit_edge402

._crit_edge402:                                   ; preds = %9, %8
  br label %._crit_edge401

._crit_edge401:                                   ; preds = %._crit_edge402, %7
  br label %._crit_edge393

; <label>:10                                      ; preds = %codeRepl
  %p_Result_s_95 = call i32 @_ssdm_op_PartSelect.i32.i128.i32.i32(i128 %p_Val2_s, i32 96, i32 127)
  %p_Result_60 = call i96 @llvm.part.set.i96.i32(i96 %p_Val2_40, i32 %p_Result_s_95, i32 0, i32 31)
  store i96 %p_Result_60, i96* @resizedKeyOutput_V, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* @resizedKey_V_V, i96 %p_Result_60) nounwind
  store i3 0, i3* @keyResizerState, align 1
  br label %._crit_edge393

; <label>:11                                      ; preds = %codeRepl
  %p_Result_20 = call i64 @_ssdm_op_PartSelect.i64.i128.i32.i32(i128 %p_Val2_s, i32 64, i32 127)
  %p_Result_61 = call i96 @llvm.part.set.i96.i64(i96 %p_Val2_40, i64 %p_Result_20, i32 0, i32 63)
  store i96 %p_Result_61, i96* @resizedKeyOutput_V, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* @resizedKey_V_V, i96 %p_Result_61) nounwind
  store i3 0, i3* @keyResizerState, align 1
  br label %._crit_edge393

; <label>:12                                      ; preds = %codeRepl
  %tmp_V_92 = call i96 @_ssdm_op_PartSelect.i96.i128.i32.i32(i128 %p_Val2_s, i32 32, i32 127)
  store i96 %tmp_V_92, i96* @resizedKeyOutput_V, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* @resizedKey_V_V, i96 %tmp_V_92) nounwind
  store i3 0, i3* @keyResizerState, align 1
  br label %._crit_edge393

._crit_edge393:                                   ; preds = %12, %11, %10, %._crit_edge401, %6, %._crit_edge399, %._crit_edge397, %._crit_edge394, %codeRepl
  ret void
}

define internal fastcc void @memcachedPipeline_ht_compare(i512* %memRdData_V_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i512* %memRdData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* @comp2memWrStatus_V_bin, [8 x i8]* @str1947, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1948, [1 x i8]* @str1948, [8 x i8]* @str1947)
  call void (...)* @_ssdm_op_SpecInterface(i512* @comp2memWrMemData_V_V, [8 x i8]* @str1714, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1715, [1 x i8]* @str1715, [8 x i8]* @str1714)
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1710, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1711, [1 x i8]* @str1711, [8 x i8]* @str1710) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1706, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1707, [1 x i8]* @str1707, [8 x i8]* @str1706) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1702, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1703, [1 x i8]* @str1703, [8 x i8]* @str1702) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1698, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1699, [1 x i8]* @str1699, [8 x i8]* @str1698) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @comp2memWrKey_V, [8 x i8]* @str1694, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1695, [1 x i8]* @str1695, [8 x i8]* @str1694) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @comp2memWrKey_V, [8 x i8]* @str1690, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1691, [1 x i8]* @str1691, [8 x i8]* @str1690) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @comp2memWrKey_V, [8 x i8]* @str1686, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1687, [1 x i8]* @str1687, [8 x i8]* @str1686) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1666, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1667, [1 x i8]* @str1667, [8 x i8]* @str1666) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1662, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1663, [1 x i8]* @str1663, [8 x i8]* @str1662) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1658, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1659, [1 x i8]* @str1659, [8 x i8]* @str1658) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1654, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1655, [1 x i8]* @str1655, [8 x i8]* @str1654) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @memRd2comp_V, [8 x i8]* @str1650, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1651, [1 x i8]* @str1651, [8 x i8]* @str1650) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @memRd2comp_V, [8 x i8]* @str1646, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1647, [1 x i8]* @str1647, [8 x i8]* @str1646) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @memRd2comp_V, [8 x i8]* @str1642, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1643, [1 x i8]* @str1643, [8 x i8]* @str1642) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str336) nounwind
  %guard_variable_for_ht_compare_s = load i1* @guard_variable_for_ht_compare_s, align 1
  %statusOutput_bin_free_V_0_load = load i1* @statusOutput_bin_free_V_0, align 1
  %statusOutput_bin_match_V_0_loa = load i1* @statusOutput_bin_match_V_0, align 1
  %statusOutput_bin_free_V_1_load = load i1* @statusOutput_bin_free_V_1, align 1
  %statusOutput_bin_match_V_1_loa = load i1* @statusOutput_bin_match_V_1, align 1
  %statusOutput_bin_free_V_2_load = load i1* @statusOutput_bin_free_V_2, align 1
  %statusOutput_bin_match_V_2_loa = load i1* @statusOutput_bin_match_V_2, align 1
  %statusOutput_bin_free_V_3_load = load i1* @statusOutput_bin_free_V_3, align 1
  %statusOutput_bin_match_V_3_loa = load i1* @statusOutput_bin_match_V_3, align 1
  br i1 %guard_variable_for_ht_compare_s, label %._crit_edge229, label %._crit_edge230.0

._crit_edge230.0:                                 ; preds = %codeRepl
  store i1 true, i1* @guard_variable_for_ht_compare_s, align 1
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %._crit_edge230.0, %codeRepl
  %statusOutput_bin_free_V_0_flag = phi i1 [ true, %._crit_edge230.0 ], [ false, %codeRepl ]
  %statusOutput_bin_free_V_0_loc = phi i1 [ false, %._crit_edge230.0 ], [ %statusOutput_bin_free_V_0_load, %codeRepl ]
  %statusOutput_bin_match_V_0_loc = phi i1 [ false, %._crit_edge230.0 ], [ %statusOutput_bin_match_V_0_loa, %codeRepl ]
  %statusOutput_bin_free_V_1_loc = phi i1 [ false, %._crit_edge230.0 ], [ %statusOutput_bin_free_V_1_load, %codeRepl ]
  %statusOutput_bin_match_V_1_loc = phi i1 [ false, %._crit_edge230.0 ], [ %statusOutput_bin_match_V_1_loa, %codeRepl ]
  %statusOutput_bin_free_V_2_loc = phi i1 [ false, %._crit_edge230.0 ], [ %statusOutput_bin_free_V_2_load, %codeRepl ]
  %statusOutput_bin_match_V_2_loc = phi i1 [ false, %._crit_edge230.0 ], [ %statusOutput_bin_match_V_2_loa, %codeRepl ]
  %statusOutput_bin_free_V_3_loc = phi i1 [ false, %._crit_edge230.0 ], [ %statusOutput_bin_free_V_3_load, %codeRepl ]
  %statusOutput_bin_match_V_3_loc = phi i1 [ false, %._crit_edge230.0 ], [ %statusOutput_bin_match_V_3_loa, %codeRepl ]
  %cmpState_load = load i2* @cmpState, align 1
  %tmp_operation_V = load i8* @cmp_inDataMd_operation_V, align 1
  %tmp_metadata_V = load i32* @cmp_inDataMd_metadata_V, align 4
  %tmp_keyLength_V = load i8* @cmp_inDataMd_keyLength_V, align 1
  %tmp_valueLength_V = load i16* @cmp_inDataMd_valueLength_V, align 2
  %cmp_keyLength_load = load i8* @cmp_keyLength, align 1
  switch i2 %cmpState_load, label %._crit_edge231 [
    i2 0, label %0
    i2 1, label %1
    i2 -2, label %2
    i2 -1, label %5
  ]

; <label>:0                                       ; preds = %._crit_edge229
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @memRd2compMd_V, i32 1)
  br i1 %tmp, label %.loopexit.loopexit, label %._crit_edge231

.loopexit.loopexit:                               ; preds = %0
  %tmp16 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @memRd2compMd_V)
  %tmp_397 = trunc i64 %tmp16 to i8
  store i8 %tmp_397, i8* @cmp_inDataMd_operation_V, align 4
  %tmp_metadata_V_load_new = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %tmp16, i32 8, i32 39)
  store i32 %tmp_metadata_V_load_new, i32* @cmp_inDataMd_metadata_V, align 4
  %tmp_keyLength_V_load_new = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp16, i32 40, i32 47)
  store i8 %tmp_keyLength_V_load_new, i8* @cmp_inDataMd_keyLength_V, align 4
  %tmp_valueLength_V_load_new = call i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64 %tmp16, i32 48, i32 63)
  store i16 %tmp_valueLength_V_load_new, i16* @cmp_inDataMd_valueLength_V, align 2
  store i8 %tmp_keyLength_V_load_new, i8* @cmp_keyLength, align 1
  %tmp_s = icmp eq i8 %tmp_397, 8
  %storemerge2 = select i1 %tmp_s, i2 -1, i2 1
  store i2 %storemerge2, i2* @cmpState, align 1
  br label %._crit_edge231

; <label>:1                                       ; preds = %._crit_edge229
  %tmp_70 = call i1 @_ssdm_op_NbReadReq.axis.i512P(i512* %memRdData_V_V, i32 1)
  br i1 %tmp_70, label %_ifconv, label %._crit_edge231

_ifconv:                                          ; preds = %1
  %tmp_V = call i512 @_ssdm_op_Read.axis.volatile.i512P(i512* %memRdData_V_V)
  %tmp_398 = trunc i512 %tmp_V to i8
  %tmp_292 = icmp eq i8 %tmp_398, 0
  %tmp_293 = icmp eq i8 %tmp_398, %cmp_keyLength_load
  %statusOutput_bin_free_V_0_flag_2 = or i1 %tmp_292, %statusOutput_bin_free_V_0_flag
  %not_tmp_1 = xor i1 %tmp_292, true
  %statusOutput_bin_match_V_0_fla = and i1 %tmp_293, %not_tmp_1
  %statusOutput_bin_match_V_0_fla_1 = or i1 %statusOutput_bin_free_V_0_flag, %statusOutput_bin_match_V_0_fla
  %p_Result_1 = call i8 @_ssdm_op_PartSelect.i8.i512.i32.i32(i512 %tmp_V, i32 128, i32 135)
  %tmp_637_1 = icmp eq i8 %p_Result_1, 0
  %tmp_639_1 = icmp eq i8 %p_Result_1, %cmp_keyLength_load
  %statusOutput_bin_free_V_1_flag_2 = or i1 %tmp_637_1, %statusOutput_bin_free_V_0_flag
  %not_tmp_637_1 = xor i1 %tmp_637_1, true
  %statusOutput_bin_match_V_1_fla = and i1 %tmp_639_1, %not_tmp_637_1
  %statusOutput_bin_match_V_1_fla_1 = or i1 %statusOutput_bin_free_V_0_flag, %statusOutput_bin_match_V_1_fla
  %p_Result_2 = call i8 @_ssdm_op_PartSelect.i8.i512.i32.i32(i512 %tmp_V, i32 256, i32 263)
  %tmp_637_2 = icmp eq i8 %p_Result_2, 0
  %tmp_639_2 = icmp eq i8 %p_Result_2, %cmp_keyLength_load
  %statusOutput_bin_free_V_2_flag_2 = or i1 %tmp_637_2, %statusOutput_bin_free_V_0_flag
  %not_tmp_637_2 = xor i1 %tmp_637_2, true
  %statusOutput_bin_match_V_2_fla = and i1 %tmp_639_2, %not_tmp_637_2
  %statusOutput_bin_match_V_2_fla_1 = or i1 %statusOutput_bin_free_V_0_flag, %statusOutput_bin_match_V_2_fla
  %p_Result_3 = call i8 @_ssdm_op_PartSelect.i8.i512.i32.i32(i512 %tmp_V, i32 384, i32 391)
  %tmp_637_3 = icmp eq i8 %p_Result_3, 0
  %tmp_639_3 = icmp eq i8 %p_Result_3, %cmp_keyLength_load
  %statusOutput_bin_free_V_3_flag_2 = or i1 %tmp_637_3, %statusOutput_bin_free_V_0_flag
  %not_tmp_637_3 = xor i1 %tmp_637_3, true
  %statusOutput_bin_match_V_3_fla = and i1 %tmp_639_3, %not_tmp_637_3
  %statusOutput_bin_match_V_3_fla_1 = or i1 %statusOutput_bin_free_V_0_flag, %statusOutput_bin_match_V_3_fla
  call void @_ssdm_op_Write.ap_fifo.volatile.i512P(i512* @comp2memWrMemData_V_V, i512 %tmp_V)
  store i2 -2, i2* @cmpState, align 1
  br label %._crit_edge231

; <label>:2                                       ; preds = %._crit_edge229
  %tmp_71 = call i1 @_ssdm_op_NbReadReq.axis.i512P(i512* %memRdData_V_V, i32 1)
  br i1 %tmp_71, label %3, label %._crit_edge231

; <label>:3                                       ; preds = %2
  %tmp_73 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @memRd2comp_V, i32 1)
  br i1 %tmp_73, label %._crit_edge236.0, label %._crit_edge231

._crit_edge236.0:                                 ; preds = %3
  %tmp_V_99 = call i512 @_ssdm_op_Read.axis.volatile.i512P(i512* %memRdData_V_V)
  %tmp_1 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @memRd2comp_V)
  %tmp_data_V = trunc i130 %tmp_1 to i128
  %tmp_400 = trunc i512 %tmp_V_99 to i128
  %tmp_297 = icmp eq i128 %tmp_400, %tmp_data_V
  %not_tmp_s = xor i1 %tmp_297, true
  %statusOutput_bin_free_V_0_flag_3 = or i1 %statusOutput_bin_free_V_0_flag, %not_tmp_s
  %statusOutput_bin_match_V_0_loc_1 = and i1 %tmp_297, %statusOutput_bin_match_V_0_loc
  %p_Result_316_1 = call i128 @_ssdm_op_PartSelect.i128.i512.i32.i32(i512 %tmp_V_99, i32 128, i32 255)
  %tmp_644_1 = icmp eq i128 %p_Result_316_1, %tmp_data_V
  %not_tmp_644_1 = xor i1 %tmp_644_1, true
  %statusOutput_bin_match_V_1_fla_2 = or i1 %statusOutput_bin_free_V_0_flag, %not_tmp_644_1
  %statusOutput_bin_match_V_1_loc_1 = and i1 %tmp_644_1, %statusOutput_bin_match_V_1_loc
  %p_Result_316_2 = call i128 @_ssdm_op_PartSelect.i128.i512.i32.i32(i512 %tmp_V_99, i32 256, i32 383)
  %tmp_644_2 = icmp eq i128 %p_Result_316_2, %tmp_data_V
  %not_tmp_644_2 = xor i1 %tmp_644_2, true
  %statusOutput_bin_free_V_0_flag_1 = or i1 %statusOutput_bin_free_V_0_flag, %not_tmp_644_2
  %statusOutput_bin_match_V_2_loc_1 = and i1 %tmp_644_2, %statusOutput_bin_match_V_2_loc
  %p_Result_316_3 = call i128 @_ssdm_op_PartSelect.i128.i512.i32.i32(i512 %tmp_V_99, i32 384, i32 511)
  %tmp_644_3 = icmp eq i128 %p_Result_316_3, %tmp_data_V
  %not_tmp_644_3 = xor i1 %tmp_644_3, true
  %statusOutput_bin_match_V_3_fla_2 = or i1 %statusOutput_bin_free_V_0_flag, %not_tmp_644_3
  %statusOutput_bin_match_V_3_loc_1 = and i1 %tmp_644_3, %statusOutput_bin_match_V_3_loc
  call void @_ssdm_op_Write.ap_fifo.volatile.i512P(i512* @comp2memWrMemData_V_V, i512 %tmp_V_99)
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @comp2memWrKey_V, i130 %tmp_1)
  %tmp_298 = icmp ugt i8 %cmp_keyLength_load, 16
  %tmp_299 = add i8 -16, %cmp_keyLength_load
  %storemerge3 = select i1 %tmp_298, i8 %tmp_299, i8 0
  store i8 %storemerge3, i8* @cmp_keyLength, align 1
  %tmp_300 = icmp eq i8 %storemerge3, 0
  br i1 %tmp_300, label %4, label %._crit_edge238

; <label>:4                                       ; preds = %._crit_edge236.0
  %tmp_3 = call i64 @_ssdm_op_BitConcatenate.i64.i16.i8.i32.i8(i16 %tmp_valueLength_V, i8 %tmp_keyLength_V, i32 %tmp_metadata_V, i8 %tmp_operation_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @comp2memWrMd_V, i64 %tmp_3)
  %tmp_bin = call i8 @_ssdm_op_BitConcatenate.i8.i1.i1.i1.i1.i1.i1.i1.i1(i1 %statusOutput_bin_match_V_3_loc_1, i1 %statusOutput_bin_match_V_2_loc_1, i1 %statusOutput_bin_match_V_1_loc_1, i1 %statusOutput_bin_match_V_0_loc_1, i1 %statusOutput_bin_free_V_3_loc, i1 %statusOutput_bin_free_V_2_loc, i1 %statusOutput_bin_free_V_1_loc, i1 %statusOutput_bin_free_V_0_loc)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* @comp2memWrStatus_V_bin, i8 %tmp_bin)
  store i2 0, i2* @cmpState, align 1
  br label %._crit_edge238

._crit_edge238:                                   ; preds = %4, %._crit_edge236.0
  br label %._crit_edge231

; <label>:5                                       ; preds = %._crit_edge229
  %tmp_72 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @memRd2comp_V, i32 1)
  br i1 %tmp_72, label %._crit_edge240, label %._crit_edge239

._crit_edge240:                                   ; preds = %5
  %tmp_4 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @memRd2comp_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @comp2memWrKey_V, i130 %tmp_4)
  %tmp_294 = icmp ugt i8 %cmp_keyLength_load, 16
  %tmp_295 = add i8 %cmp_keyLength_load, -16
  %storemerge = select i1 %tmp_294, i8 %tmp_295, i8 0
  store i8 %storemerge, i8* @cmp_keyLength, align 1
  %tmp_296 = icmp eq i8 %storemerge, 0
  br i1 %tmp_296, label %6, label %._crit_edge241

; <label>:6                                       ; preds = %._crit_edge240
  %tmp_6 = call i64 @_ssdm_op_BitConcatenate.i64.i16.i8.i32.i8(i16 %tmp_valueLength_V, i8 %tmp_keyLength_V, i32 %tmp_metadata_V, i8 %tmp_operation_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @comp2memWrMd_V, i64 %tmp_6)
  %tmp_bin_1 = call i8 @_ssdm_op_BitConcatenate.i8.i1.i1.i1.i1.i1.i1.i1.i1(i1 %statusOutput_bin_match_V_3_loc, i1 %statusOutput_bin_match_V_2_loc, i1 %statusOutput_bin_match_V_1_loc, i1 %statusOutput_bin_match_V_0_loc, i1 %statusOutput_bin_free_V_3_loc, i1 %statusOutput_bin_free_V_2_loc, i1 %statusOutput_bin_free_V_1_loc, i1 %statusOutput_bin_free_V_0_loc)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* @comp2memWrStatus_V_bin, i8 %tmp_bin_1)
  store i2 0, i2* @cmpState, align 1
  br label %._crit_edge241

._crit_edge241:                                   ; preds = %6, %._crit_edge240
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %._crit_edge241, %5
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %._crit_edge239, %._crit_edge238, %3, %2, %_ifconv, %1, %.loopexit.loopexit, %0, %._crit_edge229
  %statusOutput_bin_free_V_0_flag_4 = phi i1 [ %statusOutput_bin_free_V_0_flag, %._crit_edge229 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge239 ], [ true, %.loopexit.loopexit ], [ %statusOutput_bin_free_V_0_flag, %0 ], [ %statusOutput_bin_free_V_0_flag_2, %_ifconv ], [ %statusOutput_bin_free_V_0_flag, %1 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge238 ], [ %statusOutput_bin_free_V_0_flag, %3 ], [ %statusOutput_bin_free_V_0_flag, %2 ]
  %statusOutput_bin_free_V_0_new_4 = phi i1 [ false, %._crit_edge229 ], [ false, %._crit_edge239 ], [ false, %.loopexit.loopexit ], [ false, %0 ], [ %tmp_292, %_ifconv ], [ false, %1 ], [ false, %._crit_edge238 ], [ false, %3 ], [ false, %2 ]
  %statusOutput_bin_match_V_0_fla_2 = phi i1 [ %statusOutput_bin_free_V_0_flag, %._crit_edge229 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge239 ], [ true, %.loopexit.loopexit ], [ %statusOutput_bin_free_V_0_flag, %0 ], [ %statusOutput_bin_match_V_0_fla_1, %_ifconv ], [ %statusOutput_bin_free_V_0_flag, %1 ], [ %statusOutput_bin_free_V_0_flag_3, %._crit_edge238 ], [ %statusOutput_bin_free_V_0_flag, %3 ], [ %statusOutput_bin_free_V_0_flag, %2 ]
  %statusOutput_bin_match_V_0_new_7 = phi i1 [ false, %._crit_edge229 ], [ false, %._crit_edge239 ], [ false, %.loopexit.loopexit ], [ false, %0 ], [ %statusOutput_bin_match_V_0_fla, %_ifconv ], [ false, %1 ], [ false, %._crit_edge238 ], [ false, %3 ], [ false, %2 ]
  %statusOutput_bin_free_V_1_flag_4 = phi i1 [ %statusOutput_bin_free_V_0_flag, %._crit_edge229 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge239 ], [ true, %.loopexit.loopexit ], [ %statusOutput_bin_free_V_0_flag, %0 ], [ %statusOutput_bin_free_V_1_flag_2, %_ifconv ], [ %statusOutput_bin_free_V_0_flag, %1 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge238 ], [ %statusOutput_bin_free_V_0_flag, %3 ], [ %statusOutput_bin_free_V_0_flag, %2 ]
  %statusOutput_bin_free_V_1_new_4 = phi i1 [ false, %._crit_edge229 ], [ false, %._crit_edge239 ], [ false, %.loopexit.loopexit ], [ false, %0 ], [ %tmp_637_1, %_ifconv ], [ false, %1 ], [ false, %._crit_edge238 ], [ false, %3 ], [ false, %2 ]
  %statusOutput_bin_match_V_1_fla_3 = phi i1 [ %statusOutput_bin_free_V_0_flag, %._crit_edge229 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge239 ], [ true, %.loopexit.loopexit ], [ %statusOutput_bin_free_V_0_flag, %0 ], [ %statusOutput_bin_match_V_1_fla_1, %_ifconv ], [ %statusOutput_bin_free_V_0_flag, %1 ], [ %statusOutput_bin_match_V_1_fla_2, %._crit_edge238 ], [ %statusOutput_bin_free_V_0_flag, %3 ], [ %statusOutput_bin_free_V_0_flag, %2 ]
  %statusOutput_bin_match_V_1_new_7 = phi i1 [ false, %._crit_edge229 ], [ false, %._crit_edge239 ], [ false, %.loopexit.loopexit ], [ false, %0 ], [ %statusOutput_bin_match_V_1_fla, %_ifconv ], [ false, %1 ], [ false, %._crit_edge238 ], [ false, %3 ], [ false, %2 ]
  %statusOutput_bin_free_V_2_flag_4 = phi i1 [ %statusOutput_bin_free_V_0_flag, %._crit_edge229 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge239 ], [ true, %.loopexit.loopexit ], [ %statusOutput_bin_free_V_0_flag, %0 ], [ %statusOutput_bin_free_V_2_flag_2, %_ifconv ], [ %statusOutput_bin_free_V_0_flag, %1 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge238 ], [ %statusOutput_bin_free_V_0_flag, %3 ], [ %statusOutput_bin_free_V_0_flag, %2 ]
  %statusOutput_bin_free_V_2_new_4 = phi i1 [ false, %._crit_edge229 ], [ false, %._crit_edge239 ], [ false, %.loopexit.loopexit ], [ false, %0 ], [ %tmp_637_2, %_ifconv ], [ false, %1 ], [ false, %._crit_edge238 ], [ false, %3 ], [ false, %2 ]
  %statusOutput_bin_match_V_2_fla_2 = phi i1 [ %statusOutput_bin_free_V_0_flag, %._crit_edge229 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge239 ], [ true, %.loopexit.loopexit ], [ %statusOutput_bin_free_V_0_flag, %0 ], [ %statusOutput_bin_match_V_2_fla_1, %_ifconv ], [ %statusOutput_bin_free_V_0_flag, %1 ], [ %statusOutput_bin_free_V_0_flag_1, %._crit_edge238 ], [ %statusOutput_bin_free_V_0_flag, %3 ], [ %statusOutput_bin_free_V_0_flag, %2 ]
  %statusOutput_bin_match_V_2_new_7 = phi i1 [ false, %._crit_edge229 ], [ false, %._crit_edge239 ], [ false, %.loopexit.loopexit ], [ false, %0 ], [ %statusOutput_bin_match_V_2_fla, %_ifconv ], [ false, %1 ], [ false, %._crit_edge238 ], [ false, %3 ], [ false, %2 ]
  %statusOutput_bin_free_V_3_flag_4 = phi i1 [ %statusOutput_bin_free_V_0_flag, %._crit_edge229 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge239 ], [ true, %.loopexit.loopexit ], [ %statusOutput_bin_free_V_0_flag, %0 ], [ %statusOutput_bin_free_V_3_flag_2, %_ifconv ], [ %statusOutput_bin_free_V_0_flag, %1 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge238 ], [ %statusOutput_bin_free_V_0_flag, %3 ], [ %statusOutput_bin_free_V_0_flag, %2 ]
  %statusOutput_bin_free_V_3_new_4 = phi i1 [ false, %._crit_edge229 ], [ false, %._crit_edge239 ], [ false, %.loopexit.loopexit ], [ false, %0 ], [ %tmp_637_3, %_ifconv ], [ false, %1 ], [ false, %._crit_edge238 ], [ false, %3 ], [ false, %2 ]
  %statusOutput_bin_match_V_3_fla_3 = phi i1 [ %statusOutput_bin_free_V_0_flag, %._crit_edge229 ], [ %statusOutput_bin_free_V_0_flag, %._crit_edge239 ], [ true, %.loopexit.loopexit ], [ %statusOutput_bin_free_V_0_flag, %0 ], [ %statusOutput_bin_match_V_3_fla_1, %_ifconv ], [ %statusOutput_bin_free_V_0_flag, %1 ], [ %statusOutput_bin_match_V_3_fla_2, %._crit_edge238 ], [ %statusOutput_bin_free_V_0_flag, %3 ], [ %statusOutput_bin_free_V_0_flag, %2 ]
  %statusOutput_bin_match_V_3_new_7 = phi i1 [ false, %._crit_edge229 ], [ false, %._crit_edge239 ], [ false, %.loopexit.loopexit ], [ false, %0 ], [ %statusOutput_bin_match_V_3_fla, %_ifconv ], [ false, %1 ], [ false, %._crit_edge238 ], [ false, %3 ], [ false, %2 ]
  br i1 %statusOutput_bin_match_V_3_fla_3, label %mergeST240, label %._crit_edge231.new241

mergeST:                                          ; preds = %._crit_edge231.new229
  store i1 %statusOutput_bin_free_V_0_new_4, i1* @statusOutput_bin_free_V_0, align 1
  br label %._crit_edge231.new

._crit_edge231.new:                               ; preds = %._crit_edge231.new229, %mergeST
  ret void

mergeST228:                                       ; preds = %._crit_edge231.new231
  store i1 %statusOutput_bin_match_V_0_new_7, i1* @statusOutput_bin_match_V_0, align 1
  br label %._crit_edge231.new229

._crit_edge231.new229:                            ; preds = %._crit_edge231.new231, %mergeST228
  br i1 %statusOutput_bin_free_V_0_flag_4, label %mergeST, label %._crit_edge231.new

mergeST230:                                       ; preds = %._crit_edge231.new233
  store i1 %statusOutput_bin_free_V_1_new_4, i1* @statusOutput_bin_free_V_1, align 1
  br label %._crit_edge231.new231

._crit_edge231.new231:                            ; preds = %._crit_edge231.new233, %mergeST230
  br i1 %statusOutput_bin_match_V_0_fla_2, label %mergeST228, label %._crit_edge231.new229

mergeST232:                                       ; preds = %._crit_edge231.new235
  store i1 %statusOutput_bin_match_V_1_new_7, i1* @statusOutput_bin_match_V_1, align 1
  br label %._crit_edge231.new233

._crit_edge231.new233:                            ; preds = %._crit_edge231.new235, %mergeST232
  br i1 %statusOutput_bin_free_V_1_flag_4, label %mergeST230, label %._crit_edge231.new231

mergeST234:                                       ; preds = %._crit_edge231.new237
  store i1 %statusOutput_bin_free_V_2_new_4, i1* @statusOutput_bin_free_V_2, align 1
  br label %._crit_edge231.new235

._crit_edge231.new235:                            ; preds = %._crit_edge231.new237, %mergeST234
  br i1 %statusOutput_bin_match_V_1_fla_3, label %mergeST232, label %._crit_edge231.new233

mergeST236:                                       ; preds = %._crit_edge231.new239
  store i1 %statusOutput_bin_match_V_2_new_7, i1* @statusOutput_bin_match_V_2, align 1
  br label %._crit_edge231.new237

._crit_edge231.new237:                            ; preds = %._crit_edge231.new239, %mergeST236
  br i1 %statusOutput_bin_free_V_2_flag_4, label %mergeST234, label %._crit_edge231.new235

mergeST238:                                       ; preds = %._crit_edge231.new241
  store i1 %statusOutput_bin_free_V_3_new_4, i1* @statusOutput_bin_free_V_3, align 1
  br label %._crit_edge231.new239

._crit_edge231.new239:                            ; preds = %._crit_edge231.new241, %mergeST238
  br i1 %statusOutput_bin_match_V_2_fla_2, label %mergeST236, label %._crit_edge231.new237

mergeST240:                                       ; preds = %._crit_edge231
  store i1 %statusOutput_bin_match_V_3_new_7, i1* @statusOutput_bin_match_V_3, align 1
  br label %._crit_edge231.new241

._crit_edge231.new241:                            ; preds = %mergeST240, %._crit_edge231
  br i1 %statusOutput_bin_free_V_3_flag_4, label %mergeST238, label %._crit_edge231.new239
}

define internal fastcc void @memcachedPipeline_concurrencyControl() nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i1* @dec2cc_V_V, [8 x i8]* @str1718, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1719, [1 x i8]* @str1719, [8 x i8]* @str1718)
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1638, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1639, [1 x i8]* @str1639, [8 x i8]* @str1638) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1634, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1635, [1 x i8]* @str1635, [8 x i8]* @str1634) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1630, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1631, [1 x i8]* @str1631, [8 x i8]* @str1630) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1626, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1627, [1 x i8]* @str1627, [8 x i8]* @str1626) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @cc2memRead_V, [8 x i8]* @str1622, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1623, [1 x i8]* @str1623, [8 x i8]* @str1622) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @cc2memRead_V, [8 x i8]* @str1618, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1619, [1 x i8]* @str1619, [8 x i8]* @str1618) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @cc2memRead_V, [8 x i8]* @str1614, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1615, [1 x i8]* @str1615, [8 x i8]* @str1614) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* @hash2cc_V_V, [8 x i8]* @str1610, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1611, [1 x i8]* @str1611, [8 x i8]* @str1610)
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1590, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1591, [1 x i8]* @str1591, [8 x i8]* @str1590) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1586, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1587, [1 x i8]* @str1587, [8 x i8]* @str1586) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1582, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1583, [1 x i8]* @str1583, [8 x i8]* @str1582) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1578, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1579, [1 x i8]* @str1579, [8 x i8]* @str1578) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2cc_V, [8 x i8]* @str1574, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1575, [1 x i8]* @str1575, [8 x i8]* @str1574) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2cc_V, [8 x i8]* @str1570, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1571, [1 x i8]* @str1571, [8 x i8]* @str1570) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2cc_V, [8 x i8]* @str1566, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1567, [1 x i8]* @str1567, [8 x i8]* @str1566) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str363) nounwind
  %ccState_load = load i3* @ccState, align 1
  %tmp_EOP_V_16 = load i1* @ccInputWord_EOP_V, align 1
  %ccCompareElement_load = load i6* @ccCompareElement_address_V, align 1
  %hashFilter_filterEntries_statu = load i1* @hashFilter_filterEntries_statu, align 1
  %hashFilter_filterEntries_load = load i6* @hashFilter_filterEntries_addre, align 1
  %hashFilter_filterEntries_opera = load i8* @hashFilter_filterEntries_opera, align 1
  %hashFilter_filterEntries_opera_1 = load i8* @hashFilter_filterEntries_opera_1, align 1
  %hashFilter_filterEntries_statu_1 = load i1* @hashFilter_filterEntries_statu_1, align 1
  %hashFilter_filterEntries_load_1 = load i6* @hashFilter_filterEntries_addre_1, align 1
  %hashFilter_filterEntries_opera_2 = load i8* @hashFilter_filterEntries_opera_2, align 1
  %hashFilter_filterEntries_statu_2 = load i1* @hashFilter_filterEntries_statu_2, align 1
  %hashFilter_filterEntries_load_2 = load i6* @hashFilter_filterEntries_addre_2, align 1
  %hashFilter_filterEntries_opera_3 = load i8* @hashFilter_filterEntries_opera_3, align 1
  %hashFilter_filterEntries_statu_3 = load i1* @hashFilter_filterEntries_statu_3, align 1
  %hashFilter_filterEntries_load_3 = load i6* @hashFilter_filterEntries_addre_3, align 1
  %hashFilter_filterEntries_opera_4 = load i8* @hashFilter_filterEntries_opera_4, align 1
  %hashFilter_filterEntries_statu_4 = load i1* @hashFilter_filterEntries_statu_4, align 1
  %hashFilter_filterEntries_load_4 = load i6* @hashFilter_filterEntries_addre_4, align 1
  %hashFilter_filterEntries_opera_5 = load i8* @hashFilter_filterEntries_opera_5, align 1
  %hashFilter_filterEntries_statu_5 = load i1* @hashFilter_filterEntries_statu_5, align 1
  %hashFilter_filterEntries_load_5 = load i6* @hashFilter_filterEntries_addre_5, align 1
  %hashFilter_filterEntries_opera_6 = load i8* @hashFilter_filterEntries_opera_6, align 1
  %hashFilter_filterEntries_statu_6 = load i1* @hashFilter_filterEntries_statu_6, align 1
  %hashFilter_filterEntries_load_6 = load i6* @hashFilter_filterEntries_addre_6, align 1
  %hashFilter_filterEntries_opera_7 = load i8* @hashFilter_filterEntries_opera_7, align 1
  %hashFilter_filterEntries_statu_7 = load i1* @hashFilter_filterEntries_statu_7, align 1
  %hashFilter_filterEntries_load_7 = load i6* @hashFilter_filterEntries_addre_7, align 1
  %hashFilter_level_load = load i8* @hashFilter_level, align 1
  %tmp_401 = trunc i8 %hashFilter_level_load to i4
  %hashFilter_rdPtr_load = load i8* @hashFilter_rdPtr, align 1
  %ccCompareElement_operation_V_l = load i8* @ccCompareElement_operation_V, align 1
  switch i3 %ccState_load, label %._crit_edge139 [
    i3 0, label %0
    i3 1, label %6
    i3 2, label %19
    i3 3, label %23
    i3 -4, label %25
    i3 -3, label %26
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i1P(i1* @dec2cc_V_V, i32 1) nounwind
  br i1 %tmp, label %1, label %2

; <label>:1                                       ; preds = %0
  store i3 -4, i3* @ccState, align 1
  br label %5

; <label>:2                                       ; preds = %0
  %tmp_75 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @in2ccMd_V, i32 1) nounwind
  br i1 %tmp_75, label %3, label %._crit_edge140

; <label>:3                                       ; preds = %2
  %tmp_76 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @in2cc_V, i32 1) nounwind
  br i1 %tmp_76, label %4, label %._crit_edge140

; <label>:4                                       ; preds = %3
  %tmp_77 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i32P(i32* @hash2cc_V_V, i32 1) nounwind
  br i1 %tmp_77, label %_ifconv, label %._crit_edge140

_ifconv:                                          ; preds = %4
  %tmp110 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @in2ccMd_V) nounwind
  %tmp_409 = trunc i64 %tmp110 to i8
  store i8 %tmp_409, i8* @ccInputWordMd_operation_V, align 4
  %tmp_keyLength_V_load_new = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp110, i32 40, i32 47)
  store i8 %tmp_keyLength_V_load_new, i8* @ccInputWordMd_keyLength_V, align 4
  %tmp_valueLength_V_load_new = call i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64 %tmp110, i32 48, i32 63)
  store i16 %tmp_valueLength_V_load_new, i16* @ccInputWordMd_valueLength_V, align 2
  %tmp_1 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @in2cc_V) nounwind
  %tmp_410 = trunc i130 %tmp_1 to i128
  store i128 %tmp_410, i128* @ccInputWord_data_V, align 16
  %tmp_411 = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_1, i32 128)
  store i1 %tmp_411, i1* @ccInputWord_SOP_V, align 16
  %tmp_412 = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_1, i32 129)
  store i1 %tmp_412, i1* @ccInputWord_EOP_V, align 1
  %tmp_V = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* @hash2cc_V_V) nounwind
  %tmp_413 = trunc i32 %tmp_V to i6
  store i6 %tmp_413, i6* @ccCompareElement_address_V, align 2
  store i8 %tmp_409, i8* @ccCompareElement_operation_V, align 2
  store i32 %tmp_V, i32* @ccInputWordMd_metadata_V, align 4
  %tmp_302 = icmp eq i6 %tmp_413, %hashFilter_filterEntries_load
  %or_cond = and i1 %hashFilter_filterEntries_statu, %tmp_302
  %tmp_671_1 = icmp eq i6 %tmp_413, %hashFilter_filterEntries_load_1
  %or_cond6 = and i1 %hashFilter_filterEntries_statu_1, %tmp_671_1
  %tmp_671_2 = icmp eq i6 %tmp_413, %hashFilter_filterEntries_load_2
  %or_cond7 = and i1 %hashFilter_filterEntries_statu_2, %tmp_671_2
  %tmp_671_3 = icmp eq i6 %tmp_413, %hashFilter_filterEntries_load_3
  %or_cond8 = and i1 %hashFilter_filterEntries_statu_3, %tmp_671_3
  %tmp_671_4 = icmp eq i6 %tmp_413, %hashFilter_filterEntries_load_4
  %or_cond9 = and i1 %hashFilter_filterEntries_statu_4, %tmp_671_4
  %tmp_671_5 = icmp eq i6 %tmp_413, %hashFilter_filterEntries_load_5
  %or_cond1 = and i1 %hashFilter_filterEntries_statu_5, %tmp_671_5
  %tmp_671_6 = icmp eq i6 %tmp_413, %hashFilter_filterEntries_load_6
  %or_cond2 = and i1 %hashFilter_filterEntries_statu_6, %tmp_671_6
  %tmp_671_7 = icmp eq i6 %tmp_413, %hashFilter_filterEntries_load_7
  %or_cond3 = and i1 %hashFilter_filterEntries_statu_7, %tmp_671_7
  %tmp_303 = icmp eq i8 %hashFilter_level_load, 8
  %sel_tmp = icmp eq i8 %hashFilter_filterEntries_opera, 4
  %sel_tmp1 = icmp eq i8 %hashFilter_filterEntries_opera, 1
  %sel_tmp2 = icmp eq i8 %hashFilter_filterEntries_opera_1, 4
  %sel_tmp3 = icmp eq i8 %hashFilter_filterEntries_opera_1, 1
  %sel_tmp4 = icmp eq i8 %hashFilter_filterEntries_opera_2, 4
  %sel_tmp5 = icmp eq i8 %hashFilter_filterEntries_opera_2, 1
  %sel_tmp6 = icmp eq i8 %hashFilter_filterEntries_opera_3, 4
  %sel_tmp7 = icmp eq i8 %hashFilter_filterEntries_opera_3, 1
  %sel_tmp8 = icmp eq i8 %hashFilter_filterEntries_opera_4, 4
  %sel_tmp9 = icmp eq i8 %hashFilter_filterEntries_opera_4, 1
  %sel_tmp10 = icmp eq i8 %hashFilter_filterEntries_opera_5, 4
  %sel_tmp11 = icmp eq i8 %hashFilter_filterEntries_opera_5, 1
  %sel_tmp12 = icmp eq i8 %hashFilter_filterEntries_opera_6, 4
  %sel_tmp13 = icmp eq i8 %hashFilter_filterEntries_opera_6, 1
  %sel_tmp14 = icmp eq i8 %hashFilter_filterEntries_opera_7, 4
  %sel_tmp15 = icmp eq i8 %hashFilter_filterEntries_opera_7, 1
  %sel_tmp16 = and i1 %or_cond, %sel_tmp
  %tmp_676_0_not_not = icmp eq i8 %hashFilter_filterEntries_opera, 8
  %sel_tmp17 = and i1 %hashFilter_filterEntries_statu, %tmp_676_0_not_not
  %sel_tmp18 = and i1 %or_cond, %sel_tmp1
  %sel_tmp19 = and i1 %or_cond6, %sel_tmp2
  %tmp_676_1_not_not = icmp eq i8 %hashFilter_filterEntries_opera_1, 8
  %sel_tmp20 = and i1 %hashFilter_filterEntries_statu_1, %tmp_676_1_not_not
  %sel_tmp21 = and i1 %or_cond6, %sel_tmp3
  %sel_tmp22 = and i1 %or_cond7, %sel_tmp4
  %tmp_676_2_not_not = icmp eq i8 %hashFilter_filterEntries_opera_2, 8
  %sel_tmp23 = and i1 %hashFilter_filterEntries_statu_2, %tmp_676_2_not_not
  %sel_tmp24 = and i1 %or_cond7, %sel_tmp5
  %sel_tmp25 = and i1 %or_cond8, %sel_tmp6
  %tmp_676_3_not_not = icmp eq i8 %hashFilter_filterEntries_opera_3, 8
  %sel_tmp26 = and i1 %hashFilter_filterEntries_statu_3, %tmp_676_3_not_not
  %sel_tmp27 = and i1 %or_cond8, %sel_tmp7
  %sel_tmp28 = and i1 %or_cond9, %sel_tmp8
  %tmp_676_4_not_not = icmp eq i8 %hashFilter_filterEntries_opera_4, 8
  %sel_tmp29 = and i1 %hashFilter_filterEntries_statu_4, %tmp_676_4_not_not
  %sel_tmp30 = and i1 %or_cond9, %sel_tmp9
  %sel_tmp31 = and i1 %or_cond1, %sel_tmp10
  %tmp_676_5_not_not = icmp eq i8 %hashFilter_filterEntries_opera_5, 8
  %sel_tmp32 = and i1 %hashFilter_filterEntries_statu_5, %tmp_676_5_not_not
  %sel_tmp33 = and i1 %or_cond1, %sel_tmp11
  %sel_tmp34 = and i1 %or_cond2, %sel_tmp12
  %tmp_676_6_not_not = icmp eq i8 %hashFilter_filterEntries_opera_6, 8
  %sel_tmp35 = and i1 %hashFilter_filterEntries_statu_6, %tmp_676_6_not_not
  %sel_tmp36 = and i1 %or_cond2, %sel_tmp13
  %sel_tmp37 = and i1 %or_cond3, %sel_tmp14
  %tmp_676_7_not_not = icmp eq i8 %hashFilter_filterEntries_opera_7, 8
  %sel_tmp38 = and i1 %hashFilter_filterEntries_statu_7, %tmp_676_7_not_not
  %sel_tmp39 = and i1 %or_cond3, %sel_tmp15
  %tmp68 = or i1 %sel_tmp17, %sel_tmp18
  %tmp67 = or i1 %tmp68, %sel_tmp16
  %tmp70 = or i1 %sel_tmp20, %sel_tmp21
  %tmp69 = or i1 %tmp70, %sel_tmp19
  %tmp66 = or i1 %tmp69, %tmp67
  %tmp73 = or i1 %sel_tmp23, %sel_tmp24
  %tmp72 = or i1 %tmp73, %sel_tmp22
  %tmp75 = or i1 %sel_tmp26, %sel_tmp27
  %tmp74 = or i1 %tmp75, %sel_tmp25
  %tmp71 = or i1 %tmp74, %tmp72
  %tmp65 = or i1 %tmp71, %tmp66
  %tmp79 = or i1 %sel_tmp29, %sel_tmp30
  %tmp78 = or i1 %tmp79, %sel_tmp28
  %tmp81 = or i1 %sel_tmp32, %sel_tmp33
  %tmp80 = or i1 %tmp81, %sel_tmp31
  %tmp77 = or i1 %tmp80, %tmp78
  %tmp84 = or i1 %sel_tmp35, %sel_tmp36
  %tmp83 = or i1 %tmp84, %sel_tmp34
  %tmp86 = or i1 %sel_tmp37, %sel_tmp38
  %tmp87 = or i1 %tmp_303, %sel_tmp39
  %tmp85 = or i1 %tmp87, %tmp86
  %tmp82 = or i1 %tmp85, %tmp83
  %tmp76 = or i1 %tmp82, %tmp77
  %sel_tmp40 = or i1 %tmp76, %tmp65
  %storemerge44_cast_cast_cast = select i1 %sel_tmp40, i3 1, i3 2
  store i3 %storemerge44_cast_cast_cast, i3* @ccState, align 1
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %_ifconv, %4, %3, %2
  br label %5

; <label>:5                                       ; preds = %._crit_edge140, %1
  br label %._crit_edge139

; <label>:6                                       ; preds = %codeRepl
  %tmp_74 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i1P(i1* @dec2cc_V_V, i32 1) nounwind
  br i1 %tmp_74, label %7, label %8

; <label>:7                                       ; preds = %6
  store i3 -3, i3* @ccState, align 1
  br label %18

; <label>:8                                       ; preds = %6
  %tmp_s = icmp eq i8 %hashFilter_level_load, 8
  br i1 %tmp_s, label %._crit_edge146, label %9

; <label>:9                                       ; preds = %8
  %tmp_301 = icmp eq i6 %ccCompareElement_load, %hashFilter_filterEntries_load
  %or_cond5 = and i1 %hashFilter_filterEntries_statu, %tmp_301
  %tmp_674_0_not = icmp eq i8 %hashFilter_filterEntries_opera, 8
  br i1 %or_cond5, label %10, label %._crit_edge.i162.0

._crit_edge39.i163:                               ; preds = %switch.early.test117, %switch.early.test114, %switch.early.test111, %switch.early.test108, %switch.early.test105, %switch.early.test102, %switch.early.test99, %switch.early.test, %17, %._crit_edge.i162.7, %16, %._crit_edge.i162.6, %15, %._crit_edge.i162.5, %14, %._crit_edge.i162.4, %13, %._crit_edge.i162.3, %12, %._crit_edge.i162.2, %11, %._crit_edge.i162.1, %10, %._crit_edge.i162.0
  br label %._crit_edge146

._crit_edge.i162.0:                               ; preds = %9
  %demorgan_old = and i1 %hashFilter_filterEntries_statu, %tmp_674_0_not
  br i1 %demorgan_old, label %._crit_edge39.i163, label %._crit_edge42.i164.0

; <label>:10                                      ; preds = %9
  br i1 %tmp_674_0_not, label %._crit_edge39.i163, label %switch.early.test

switch.early.test:                                ; preds = %10
  %tmp_414 = icmp eq i8 %hashFilter_filterEntries_opera, 4
  %tmp_415 = icmp eq i8 %hashFilter_filterEntries_opera, 1
  %tmp_416 = or i1 %tmp_415, %tmp_414
  br i1 %tmp_416, label %._crit_edge39.i163, label %._crit_edge42.i164.0

._crit_edge.i162.1:                               ; preds = %._crit_edge42.i164.0
  %demorgan89_old = and i1 %hashFilter_filterEntries_statu_1, %tmp_674_1_not
  br i1 %demorgan89_old, label %._crit_edge39.i163, label %._crit_edge42.i164.1

._crit_edge42.i164.0:                             ; preds = %switch.early.test, %._crit_edge.i162.0
  %tmp_667_1 = icmp eq i6 %ccCompareElement_load, %hashFilter_filterEntries_load_1
  %or_cond4 = and i1 %hashFilter_filterEntries_statu_1, %tmp_667_1
  %tmp_674_1_not = icmp eq i8 %hashFilter_filterEntries_opera_1, 8
  br i1 %or_cond4, label %11, label %._crit_edge.i162.1

; <label>:11                                      ; preds = %._crit_edge42.i164.0
  br i1 %tmp_674_1_not, label %._crit_edge39.i163, label %switch.early.test99

switch.early.test99:                              ; preds = %11
  %tmp_417 = icmp eq i8 %hashFilter_filterEntries_opera_1, 4
  %tmp_418 = icmp eq i8 %hashFilter_filterEntries_opera_1, 1
  %tmp_419 = or i1 %tmp_418, %tmp_417
  br i1 %tmp_419, label %._crit_edge39.i163, label %._crit_edge42.i164.1

._crit_edge.i162.2:                               ; preds = %._crit_edge42.i164.1
  %demorgan90_old = and i1 %hashFilter_filterEntries_statu_2, %tmp_674_2_not
  br i1 %demorgan90_old, label %._crit_edge39.i163, label %._crit_edge42.i164.2

._crit_edge42.i164.1:                             ; preds = %switch.early.test99, %._crit_edge.i162.1
  %tmp_667_2 = icmp eq i6 %ccCompareElement_load, %hashFilter_filterEntries_load_2
  %or_cond10 = and i1 %hashFilter_filterEntries_statu_2, %tmp_667_2
  %tmp_674_2_not = icmp eq i8 %hashFilter_filterEntries_opera_2, 8
  br i1 %or_cond10, label %12, label %._crit_edge.i162.2

; <label>:12                                      ; preds = %._crit_edge42.i164.1
  br i1 %tmp_674_2_not, label %._crit_edge39.i163, label %switch.early.test102

switch.early.test102:                             ; preds = %12
  %tmp_420 = icmp eq i8 %hashFilter_filterEntries_opera_2, 4
  %tmp_421 = icmp eq i8 %hashFilter_filterEntries_opera_2, 1
  %tmp_422 = or i1 %tmp_421, %tmp_420
  br i1 %tmp_422, label %._crit_edge39.i163, label %._crit_edge42.i164.2

._crit_edge.i162.3:                               ; preds = %._crit_edge42.i164.2
  %demorgan91_old = and i1 %hashFilter_filterEntries_statu_3, %tmp_674_3_not
  br i1 %demorgan91_old, label %._crit_edge39.i163, label %._crit_edge42.i164.3

._crit_edge42.i164.2:                             ; preds = %switch.early.test102, %._crit_edge.i162.2
  %tmp_667_3 = icmp eq i6 %ccCompareElement_load, %hashFilter_filterEntries_load_3
  %or_cond11 = and i1 %hashFilter_filterEntries_statu_3, %tmp_667_3
  %tmp_674_3_not = icmp eq i8 %hashFilter_filterEntries_opera_3, 8
  br i1 %or_cond11, label %13, label %._crit_edge.i162.3

; <label>:13                                      ; preds = %._crit_edge42.i164.2
  br i1 %tmp_674_3_not, label %._crit_edge39.i163, label %switch.early.test105

switch.early.test105:                             ; preds = %13
  %tmp_423 = icmp eq i8 %hashFilter_filterEntries_opera_3, 4
  %tmp_424 = icmp eq i8 %hashFilter_filterEntries_opera_3, 1
  %tmp_425 = or i1 %tmp_424, %tmp_423
  br i1 %tmp_425, label %._crit_edge39.i163, label %._crit_edge42.i164.3

._crit_edge.i162.4:                               ; preds = %._crit_edge42.i164.3
  %demorgan92_old = and i1 %hashFilter_filterEntries_statu_4, %tmp_674_4_not
  br i1 %demorgan92_old, label %._crit_edge39.i163, label %._crit_edge42.i164.4

._crit_edge42.i164.3:                             ; preds = %switch.early.test105, %._crit_edge.i162.3
  %tmp_667_4 = icmp eq i6 %ccCompareElement_load, %hashFilter_filterEntries_load_4
  %or_cond12 = and i1 %hashFilter_filterEntries_statu_4, %tmp_667_4
  %tmp_674_4_not = icmp eq i8 %hashFilter_filterEntries_opera_4, 8
  br i1 %or_cond12, label %14, label %._crit_edge.i162.4

; <label>:14                                      ; preds = %._crit_edge42.i164.3
  br i1 %tmp_674_4_not, label %._crit_edge39.i163, label %switch.early.test108

switch.early.test108:                             ; preds = %14
  %tmp_426 = icmp eq i8 %hashFilter_filterEntries_opera_4, 4
  %tmp_427 = icmp eq i8 %hashFilter_filterEntries_opera_4, 1
  %tmp_428 = or i1 %tmp_427, %tmp_426
  br i1 %tmp_428, label %._crit_edge39.i163, label %._crit_edge42.i164.4

._crit_edge.i162.5:                               ; preds = %._crit_edge42.i164.4
  %demorgan93_old = and i1 %hashFilter_filterEntries_statu_5, %tmp_674_5_not
  br i1 %demorgan93_old, label %._crit_edge39.i163, label %._crit_edge42.i164.5

._crit_edge42.i164.4:                             ; preds = %switch.early.test108, %._crit_edge.i162.4
  %tmp_667_5 = icmp eq i6 %ccCompareElement_load, %hashFilter_filterEntries_load_5
  %or_cond13 = and i1 %hashFilter_filterEntries_statu_5, %tmp_667_5
  %tmp_674_5_not = icmp eq i8 %hashFilter_filterEntries_opera_5, 8
  br i1 %or_cond13, label %15, label %._crit_edge.i162.5

; <label>:15                                      ; preds = %._crit_edge42.i164.4
  br i1 %tmp_674_5_not, label %._crit_edge39.i163, label %switch.early.test111

switch.early.test111:                             ; preds = %15
  %tmp_429 = icmp eq i8 %hashFilter_filterEntries_opera_5, 4
  %tmp_430 = icmp eq i8 %hashFilter_filterEntries_opera_5, 1
  %tmp_431 = or i1 %tmp_430, %tmp_429
  br i1 %tmp_431, label %._crit_edge39.i163, label %._crit_edge42.i164.5

._crit_edge.i162.6:                               ; preds = %._crit_edge42.i164.5
  %demorgan94_old = and i1 %hashFilter_filterEntries_statu_6, %tmp_674_6_not
  br i1 %demorgan94_old, label %._crit_edge39.i163, label %._crit_edge42.i164.6

._crit_edge42.i164.5:                             ; preds = %switch.early.test111, %._crit_edge.i162.5
  %tmp_667_6 = icmp eq i6 %ccCompareElement_load, %hashFilter_filterEntries_load_6
  %or_cond14 = and i1 %hashFilter_filterEntries_statu_6, %tmp_667_6
  %tmp_674_6_not = icmp eq i8 %hashFilter_filterEntries_opera_6, 8
  br i1 %or_cond14, label %16, label %._crit_edge.i162.6

; <label>:16                                      ; preds = %._crit_edge42.i164.5
  br i1 %tmp_674_6_not, label %._crit_edge39.i163, label %switch.early.test114

switch.early.test114:                             ; preds = %16
  %tmp_432 = icmp eq i8 %hashFilter_filterEntries_opera_6, 4
  %tmp_433 = icmp eq i8 %hashFilter_filterEntries_opera_6, 1
  %tmp_434 = or i1 %tmp_433, %tmp_432
  br i1 %tmp_434, label %._crit_edge39.i163, label %._crit_edge42.i164.6

._crit_edge.i162.7:                               ; preds = %._crit_edge42.i164.6
  %demorgan95_old = and i1 %hashFilter_filterEntries_statu_7, %tmp_674_7_not
  br i1 %demorgan95_old, label %._crit_edge39.i163, label %compare.exit166

._crit_edge42.i164.6:                             ; preds = %switch.early.test114, %._crit_edge.i162.6
  %tmp_667_7 = icmp eq i6 %ccCompareElement_load, %hashFilter_filterEntries_load_7
  %or_cond15 = and i1 %hashFilter_filterEntries_statu_7, %tmp_667_7
  %tmp_674_7_not = icmp eq i8 %hashFilter_filterEntries_opera_7, 8
  br i1 %or_cond15, label %17, label %._crit_edge.i162.7

; <label>:17                                      ; preds = %._crit_edge42.i164.6
  br i1 %tmp_674_7_not, label %._crit_edge39.i163, label %switch.early.test117

switch.early.test117:                             ; preds = %17
  %tmp_435 = icmp eq i8 %hashFilter_filterEntries_opera_7, 4
  %tmp_436 = icmp eq i8 %hashFilter_filterEntries_opera_7, 1
  %tmp_437 = or i1 %tmp_436, %tmp_435
  br i1 %tmp_437, label %._crit_edge39.i163, label %compare.exit166

compare.exit166:                                  ; preds = %switch.early.test117, %._crit_edge.i162.7
  store i3 2, i3* @ccState, align 1
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %compare.exit166, %._crit_edge39.i163, %8
  br label %18

; <label>:18                                      ; preds = %._crit_edge146, %7
  br label %._crit_edge139

; <label>:19                                      ; preds = %codeRepl
  %tmp_402 = call i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8 %hashFilter_level_load, i32 3, i32 7)
  %icmp = icmp eq i5 %tmp_402, 0
  br i1 %icmp, label %20, label %push.exit

; <label>:20                                      ; preds = %19
  %hashFilter_wrPtr_load = load i8* @hashFilter_wrPtr, align 2
  %tmp_406 = trunc i8 %hashFilter_wrPtr_load to i3
  switch i3 %tmp_406, label %branch7 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
    i3 -2, label %branch6
  ]

branch24:                                         ; preds = %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  switch i3 %tmp_406, label %branch39 [
    i3 0, label %branch32
    i3 1, label %branch33
    i3 2, label %branch34
    i3 3, label %branch35
    i3 -4, label %branch36
    i3 -3, label %branch37
    i3 -2, label %branch38
  ]

; <label>:21                                      ; preds = %branch39, %branch38, %branch37, %branch36, %branch35, %branch34, %branch33, %branch32
  switch i3 %tmp_406, label %branch47 [
    i3 0, label %branch40
    i3 1, label %branch41
    i3 2, label %branch42
    i3 3, label %branch43
    i3 -4, label %branch44
    i3 -3, label %branch45
    i3 -2, label %branch46
  ]

; <label>:22                                      ; preds = %branch47, %branch46, %branch45, %branch44, %branch43, %branch42, %branch41, %branch40
  %tmp_310 = icmp eq i8 %hashFilter_wrPtr_load, 7
  %tmp_311 = add i8 %hashFilter_wrPtr_load, 1
  %p_tmp_4 = select i1 %tmp_310, i8 0, i8 %tmp_311
  store i8 %p_tmp_4, i8* @hashFilter_wrPtr, align 2
  %tmp_312 = add i4 %tmp_401, 1
  %tmp_387_cast = zext i4 %tmp_312 to i8
  store i8 %tmp_387_cast, i8* @hashFilter_level, align 2
  br label %push.exit

push.exit:                                        ; preds = %22, %19
  %tmp_operation_V = load i8* @ccInputWordMd_operation_V, align 4
  %tmp_metadata_V = load i32* @ccInputWordMd_metadata_V, align 4
  %tmp_keyLength_V = load i8* @ccInputWordMd_keyLength_V, align 4
  %tmp_valueLength_V = load i16* @ccInputWordMd_valueLength_V, align 2
  %tmp_2 = call i64 @_ssdm_op_BitConcatenate.i64.i16.i8.i32.i8(i16 %tmp_valueLength_V, i8 %tmp_keyLength_V, i32 %tmp_metadata_V, i8 %tmp_operation_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @cc2memReadMd_V, i64 %tmp_2) nounwind
  %tmp_data_V_11 = load i128* @ccInputWord_data_V, align 16
  %tmp_SOP_V_3 = load i1* @ccInputWord_SOP_V, align 16
  %tmp_3 = call i130 @_ssdm_op_BitConcatenate.i130.i1.i1.i128(i1 %tmp_EOP_V_16, i1 %tmp_SOP_V_3, i128 %tmp_data_V_11)
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @cc2memRead_V, i130 %tmp_3) nounwind
  %storemerge_cast_cast_cast = select i1 %tmp_EOP_V_16, i3 0, i3 3
  store i3 %storemerge_cast_cast_cast, i3* @ccState, align 1
  br label %._crit_edge139

; <label>:23                                      ; preds = %codeRepl
  %tmp_4 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @in2cc_V) nounwind
  %tmp_data_V = trunc i130 %tmp_4 to i128
  store i128 %tmp_data_V, i128* @ccInputWord_data_V, align 16
  %tmp_SOP_V = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_4, i32 128)
  store i1 %tmp_SOP_V, i1* @ccInputWord_SOP_V, align 16
  %tmp_EOP_V = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_4, i32 129)
  store i1 %tmp_EOP_V, i1* @ccInputWord_EOP_V, align 1
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @cc2memRead_V, i130 %tmp_4) nounwind
  br i1 %tmp_EOP_V, label %24, label %._crit_edge148

; <label>:24                                      ; preds = %23
  store i3 0, i3* @ccState, align 1
  br label %._crit_edge148

._crit_edge148:                                   ; preds = %24, %23
  br label %._crit_edge139

; <label>:25                                      ; preds = %codeRepl
  %tmp_V_100 = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* @dec2cc_V_V) nounwind
  br i1 %tmp_V_100, label %pop.exit, label %._crit_edge149

pop.exit:                                         ; preds = %25
  %tmp_407 = trunc i8 %hashFilter_rdPtr_load to i3
  switch i3 %tmp_407, label %branch15 [
    i3 0, label %branch8
    i3 1, label %branch9
    i3 2, label %branch10
    i3 3, label %branch11
    i3 -4, label %branch12
    i3 -3, label %branch13
    i3 -2, label %branch14
  ]

pop.exit189:                                      ; preds = %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8
  switch i3 %tmp_407, label %branch55 [
    i3 0, label %branch48
    i3 1, label %branch49
    i3 2, label %branch50
    i3 3, label %branch51
    i3 -4, label %branch52
    i3 -3, label %branch53
    i3 -2, label %branch54
  ]

pop.exit189235:                                   ; preds = %branch55, %branch54, %branch53, %branch52, %branch51, %branch50, %branch49, %branch48
  %tmp_304 = icmp eq i8 %hashFilter_rdPtr_load, 7
  %tmp_305 = add i8 %hashFilter_rdPtr_load, 1
  %p_tmp_s = select i1 %tmp_304, i8 0, i8 %tmp_305
  store i8 %p_tmp_s, i8* @hashFilter_rdPtr, align 1
  %tmp_306 = add i8 %hashFilter_level_load, -1
  store i8 %tmp_306, i8* @hashFilter_level, align 2
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %pop.exit189235, %25
  store i3 0, i3* @ccState, align 1
  br label %._crit_edge139

; <label>:26                                      ; preds = %codeRepl
  %tmp_V_101 = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* @dec2cc_V_V) nounwind
  br i1 %tmp_V_101, label %pop.exit174, label %._crit_edge150

pop.exit174:                                      ; preds = %26
  %tmp_408 = trunc i8 %hashFilter_rdPtr_load to i3
  switch i3 %tmp_408, label %branch23 [
    i3 0, label %branch16
    i3 1, label %branch17
    i3 2, label %branch18
    i3 3, label %branch19
    i3 -4, label %branch20
    i3 -3, label %branch21
    i3 -2, label %branch22
  ]

pop.exit174198:                                   ; preds = %branch23, %branch22, %branch21, %branch20, %branch19, %branch18, %branch17, %branch16
  switch i3 %tmp_408, label %branch63 [
    i3 0, label %branch56
    i3 1, label %branch57
    i3 2, label %branch58
    i3 3, label %branch59
    i3 -4, label %branch60
    i3 -3, label %branch61
    i3 -2, label %branch62
  ]

pop.exit174198245:                                ; preds = %branch63, %branch62, %branch61, %branch60, %branch59, %branch58, %branch57, %branch56
  %tmp_307 = icmp eq i8 %hashFilter_rdPtr_load, 7
  %tmp_308 = add i8 %hashFilter_rdPtr_load, 1
  %p_tmp_3 = select i1 %tmp_307, i8 0, i8 %tmp_308
  store i8 %p_tmp_3, i8* @hashFilter_rdPtr, align 1
  %tmp_309 = add i8 %hashFilter_level_load, -1
  store i8 %tmp_309, i8* @hashFilter_level, align 2
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %pop.exit174198245, %26
  store i3 1, i3* @ccState, align 1
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %._crit_edge150, %._crit_edge149, %._crit_edge148, %push.exit, %18, %5, %codeRepl
  ret void

branch0:                                          ; preds = %20
  store i6 %ccCompareElement_load, i6* @hashFilter_filterEntries_addre, align 2
  br label %branch24

branch1:                                          ; preds = %20
  store i6 %ccCompareElement_load, i6* @hashFilter_filterEntries_addre_1, align 2
  br label %branch24

branch2:                                          ; preds = %20
  store i6 %ccCompareElement_load, i6* @hashFilter_filterEntries_addre_2, align 2
  br label %branch24

branch3:                                          ; preds = %20
  store i6 %ccCompareElement_load, i6* @hashFilter_filterEntries_addre_3, align 2
  br label %branch24

branch4:                                          ; preds = %20
  store i6 %ccCompareElement_load, i6* @hashFilter_filterEntries_addre_4, align 2
  br label %branch24

branch5:                                          ; preds = %20
  store i6 %ccCompareElement_load, i6* @hashFilter_filterEntries_addre_5, align 2
  br label %branch24

branch6:                                          ; preds = %20
  store i6 %ccCompareElement_load, i6* @hashFilter_filterEntries_addre_6, align 2
  br label %branch24

branch7:                                          ; preds = %20
  store i6 %ccCompareElement_load, i6* @hashFilter_filterEntries_addre_7, align 2
  br label %branch24

branch8:                                          ; preds = %pop.exit
  store i6 0, i6* @hashFilter_filterEntries_addre, align 2
  br label %pop.exit189

branch9:                                          ; preds = %pop.exit
  store i6 0, i6* @hashFilter_filterEntries_addre_1, align 2
  br label %pop.exit189

branch10:                                         ; preds = %pop.exit
  store i6 0, i6* @hashFilter_filterEntries_addre_2, align 2
  br label %pop.exit189

branch11:                                         ; preds = %pop.exit
  store i6 0, i6* @hashFilter_filterEntries_addre_3, align 2
  br label %pop.exit189

branch12:                                         ; preds = %pop.exit
  store i6 0, i6* @hashFilter_filterEntries_addre_4, align 2
  br label %pop.exit189

branch13:                                         ; preds = %pop.exit
  store i6 0, i6* @hashFilter_filterEntries_addre_5, align 2
  br label %pop.exit189

branch14:                                         ; preds = %pop.exit
  store i6 0, i6* @hashFilter_filterEntries_addre_6, align 2
  br label %pop.exit189

branch15:                                         ; preds = %pop.exit
  store i6 0, i6* @hashFilter_filterEntries_addre_7, align 2
  br label %pop.exit189

branch16:                                         ; preds = %pop.exit174
  store i6 0, i6* @hashFilter_filterEntries_addre, align 2
  br label %pop.exit174198

branch17:                                         ; preds = %pop.exit174
  store i6 0, i6* @hashFilter_filterEntries_addre_1, align 2
  br label %pop.exit174198

branch18:                                         ; preds = %pop.exit174
  store i6 0, i6* @hashFilter_filterEntries_addre_2, align 2
  br label %pop.exit174198

branch19:                                         ; preds = %pop.exit174
  store i6 0, i6* @hashFilter_filterEntries_addre_3, align 2
  br label %pop.exit174198

branch20:                                         ; preds = %pop.exit174
  store i6 0, i6* @hashFilter_filterEntries_addre_4, align 2
  br label %pop.exit174198

branch21:                                         ; preds = %pop.exit174
  store i6 0, i6* @hashFilter_filterEntries_addre_5, align 2
  br label %pop.exit174198

branch22:                                         ; preds = %pop.exit174
  store i6 0, i6* @hashFilter_filterEntries_addre_6, align 2
  br label %pop.exit174198

branch23:                                         ; preds = %pop.exit174
  store i6 0, i6* @hashFilter_filterEntries_addre_7, align 2
  br label %pop.exit174198

branch32:                                         ; preds = %branch24
  store i8 %ccCompareElement_operation_V_l, i8* @hashFilter_filterEntries_opera, align 2
  br label %21

branch33:                                         ; preds = %branch24
  store i8 %ccCompareElement_operation_V_l, i8* @hashFilter_filterEntries_opera_1, align 2
  br label %21

branch34:                                         ; preds = %branch24
  store i8 %ccCompareElement_operation_V_l, i8* @hashFilter_filterEntries_opera_2, align 2
  br label %21

branch35:                                         ; preds = %branch24
  store i8 %ccCompareElement_operation_V_l, i8* @hashFilter_filterEntries_opera_3, align 2
  br label %21

branch36:                                         ; preds = %branch24
  store i8 %ccCompareElement_operation_V_l, i8* @hashFilter_filterEntries_opera_4, align 2
  br label %21

branch37:                                         ; preds = %branch24
  store i8 %ccCompareElement_operation_V_l, i8* @hashFilter_filterEntries_opera_5, align 2
  br label %21

branch38:                                         ; preds = %branch24
  store i8 %ccCompareElement_operation_V_l, i8* @hashFilter_filterEntries_opera_6, align 2
  br label %21

branch39:                                         ; preds = %branch24
  store i8 %ccCompareElement_operation_V_l, i8* @hashFilter_filterEntries_opera_7, align 2
  br label %21

branch40:                                         ; preds = %21
  store i1 true, i1* @hashFilter_filterEntries_statu, align 1
  br label %22

branch41:                                         ; preds = %21
  store i1 true, i1* @hashFilter_filterEntries_statu_1, align 1
  br label %22

branch42:                                         ; preds = %21
  store i1 true, i1* @hashFilter_filterEntries_statu_2, align 1
  br label %22

branch43:                                         ; preds = %21
  store i1 true, i1* @hashFilter_filterEntries_statu_3, align 1
  br label %22

branch44:                                         ; preds = %21
  store i1 true, i1* @hashFilter_filterEntries_statu_4, align 1
  br label %22

branch45:                                         ; preds = %21
  store i1 true, i1* @hashFilter_filterEntries_statu_5, align 1
  br label %22

branch46:                                         ; preds = %21
  store i1 true, i1* @hashFilter_filterEntries_statu_6, align 1
  br label %22

branch47:                                         ; preds = %21
  store i1 true, i1* @hashFilter_filterEntries_statu_7, align 1
  br label %22

branch48:                                         ; preds = %pop.exit189
  store i1 false, i1* @hashFilter_filterEntries_statu, align 1
  br label %pop.exit189235

branch49:                                         ; preds = %pop.exit189
  store i1 false, i1* @hashFilter_filterEntries_statu_1, align 1
  br label %pop.exit189235

branch50:                                         ; preds = %pop.exit189
  store i1 false, i1* @hashFilter_filterEntries_statu_2, align 1
  br label %pop.exit189235

branch51:                                         ; preds = %pop.exit189
  store i1 false, i1* @hashFilter_filterEntries_statu_3, align 1
  br label %pop.exit189235

branch52:                                         ; preds = %pop.exit189
  store i1 false, i1* @hashFilter_filterEntries_statu_4, align 1
  br label %pop.exit189235

branch53:                                         ; preds = %pop.exit189
  store i1 false, i1* @hashFilter_filterEntries_statu_5, align 1
  br label %pop.exit189235

branch54:                                         ; preds = %pop.exit189
  store i1 false, i1* @hashFilter_filterEntries_statu_6, align 1
  br label %pop.exit189235

branch55:                                         ; preds = %pop.exit189
  store i1 false, i1* @hashFilter_filterEntries_statu_7, align 1
  br label %pop.exit189235

branch56:                                         ; preds = %pop.exit174198
  store i1 false, i1* @hashFilter_filterEntries_statu, align 1
  br label %pop.exit174198245

branch57:                                         ; preds = %pop.exit174198
  store i1 false, i1* @hashFilter_filterEntries_statu_1, align 1
  br label %pop.exit174198245

branch58:                                         ; preds = %pop.exit174198
  store i1 false, i1* @hashFilter_filterEntries_statu_2, align 1
  br label %pop.exit174198245

branch59:                                         ; preds = %pop.exit174198
  store i1 false, i1* @hashFilter_filterEntries_statu_3, align 1
  br label %pop.exit174198245

branch60:                                         ; preds = %pop.exit174198
  store i1 false, i1* @hashFilter_filterEntries_statu_4, align 1
  br label %pop.exit174198245

branch61:                                         ; preds = %pop.exit174198
  store i1 false, i1* @hashFilter_filterEntries_statu_5, align 1
  br label %pop.exit174198245

branch62:                                         ; preds = %pop.exit174198
  store i1 false, i1* @hashFilter_filterEntries_statu_6, align 1
  br label %pop.exit174198245

branch63:                                         ; preds = %pop.exit174198
  store i1 false, i1* @hashFilter_filterEntries_statu_7, align 1
  br label %pop.exit174198245
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare void @_GLOBAL__I_a34() nounwind section ".text.startup"

declare void @_GLOBAL__I_a61() nounwind section ".text.startup"

declare void @_GLOBAL__I_a87() nounwind section ".text.startup"

declare void @_GLOBAL__I_a124() nounwind section ".text.startup"

declare void @_GLOBAL__I_a161() nounwind section ".text.startup"

declare void @_GLOBAL__I_a189() nounwind section ".text.startup"

declare void @_GLOBAL__I_a218() nounwind section ".text.startup"

declare void @_GLOBAL__I_a243() nounwind section ".text.startup"

declare void @_GLOBAL__I_a268() nounwind section ".text.startup"

declare void @_GLOBAL__I_a305() nounwind section ".text.startup"

declare void @_GLOBAL__I_a333() nounwind section ".text.startup"

declare void @_GLOBAL__I_a360() nounwind section ".text.startup"

declare void @_GLOBAL__I_a387() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i64 @llvm.part.set.i64.i8(i64, i8, i32, i32) nounwind readnone

define internal fastcc void @memcachedPipeline_dispatch(i40* %memRdCmd_V) {
  call void (...)* @_ssdm_op_SpecInterface(i40* %memRdCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2getPath_V, [8 x i8]* @str1470, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1471, [1 x i8]* @str1471, [8 x i8]* @str1470) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2getPath_V, [8 x i8]* @str1466, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1467, [1 x i8]* @str1467, [8 x i8]* @str1466) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i12* @disp2rec_V_V, [8 x i8]* @str1438, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1439, [1 x i8]* @str1439, [8 x i8]* @str1438)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1128) nounwind
  %tmp19 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i45P(i45* @demux2getPath_V, i32 1)
  br i1 %tmp19, label %._crit_edge59, label %._crit_edge

._crit_edge59:                                    ; preds = %0
  %tmp1 = call i45 @_ssdm_op_Read.ap_fifo.volatile.i45P(i45* @demux2getPath_V)
  %getCtrlWord_address_V = trunc i45 %tmp1 to i32
  %tmp_length_V_load_new6 = call i13 @_ssdm_op_PartSelect.i13.i45.i32.i32(i45 %tmp1, i32 32, i32 44)
  %tmp = call i7 @_ssdm_op_PartSelect.i7.i45.i32.i32(i45 %tmp1, i32 38, i32 44)
  %tmp_159 = zext i7 %tmp to i8
  %op2_assign = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp, i6 0)
  %tmp_162 = icmp ugt i13 %tmp_length_V_load_new6, %op2_assign
  %tmp_163 = add i8 1, %tmp_159
  %tmp_count_V = select i1 %tmp_162, i8 %tmp_163, i8 %tmp_159
  %tmp_1 = call i40 @_ssdm_op_BitConcatenate.i40.i8.i32(i8 %tmp_count_V, i32 %getCtrlWord_address_V)
  call void @_ssdm_op_Write.axis.volatile.i40P(i40* %memRdCmd_V, i40 %tmp_1)
  %tmp_V = call i12 @_ssdm_op_PartSelect.i12.i45.i32.i32(i45 %tmp1, i32 32, i32 43)
  call void @_ssdm_op_Write.ap_fifo.volatile.i12P(i12* @disp2rec_V_V, i12 %tmp_V)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge59, %0
  ret void
}

define internal fastcc void @memcachedPipeline_setPath(i40* %memWrCmd_V, i512* %memWrData_V_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i512* %memWrData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i40* %memWrCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1* @filterPopSet_V_V, [8 x i8]* @str1498, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1499, [1 x i8]* @str1499, [8 x i8]* @str1498)
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2setPathMetadata_V, [8 x i8]* @str1462, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1463, [1 x i8]* @str1463, [8 x i8]* @str1462) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2setPathMetadata_V, [8 x i8]* @str1458, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1459, [1 x i8]* @str1459, [8 x i8]* @str1458) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @demux2setPathValue_V, [8 x i8]* @str1450, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1451, [1 x i8]* @str1451, [8 x i8]* @str1450) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @demux2setPathValue_V, [8 x i8]* @str1446, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1447, [1 x i8]* @str1447, [8 x i8]* @str1446) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @demux2setPathValue_V, [8 x i8]* @str1442, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1443, [1 x i8]* @str1443, [8 x i8]* @str1442) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str127, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1128, [1 x i8]* @p_str1128, [1 x i8]* @p_str1128) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1128) nounwind
  %setState_load = load i3* @setState, align 1
  %p_Val2_s = load i512* @setValueBuffer_V, align 16
  %setCtrlWord_address_V = load i32* @setMdBuffer_address_V, align 4
  %tmp_count_V = load i8* @setNumOfWords, align 1
  %counter_load = load i8* @counter, align 1
  switch i3 %setState_load, label %._crit_edge206 [
    i3 0, label %0
    i3 1, label %3
    i3 3, label %4
    i3 -4, label %5
    i3 2, label %6
    i3 -3, label %7
    i3 -2, label %8
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i45P(i45* @demux2setPathMetadata_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge206

; <label>:1                                       ; preds = %0
  %tmp_80 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i66P(i66* @demux2setPathValue_V, i32 1)
  br i1 %tmp_80, label %._crit_edge209, label %._crit_edge206

._crit_edge209:                                   ; preds = %1
  %tmp2 = call i45 @_ssdm_op_Read.ap_fifo.volatile.i45P(i45* @demux2setPathMetadata_V)
  %tmp_485 = trunc i45 %tmp2 to i32
  store i32 %tmp_485, i32* @setMdBuffer_address_V, align 4
  %tmp_length_V_load_new7 = call i13 @_ssdm_op_PartSelect.i13.i45.i32.i32(i45 %tmp2, i32 32, i32 44)
  %tmp_90 = call i7 @_ssdm_op_PartSelect.i7.i45.i32.i32(i45 %tmp2, i32 38, i32 44)
  %tmp_151 = zext i7 %tmp_90 to i8
  %op2_assign = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_90, i6 0)
  %tmp_154 = icmp ugt i13 %tmp_length_V_load_new7, %op2_assign
  %tmp_157 = add i8 1, %tmp_151
  %storemerge1 = select i1 %tmp_154, i8 %tmp_157, i8 %tmp_151
  store i8 %storemerge1, i8* @setNumOfWords, align 1
  %tmp_1 = call i66 @_ssdm_op_Read.ap_fifo.volatile.i66P(i66* @demux2setPathValue_V)
  %tmp_486 = call i1 @_ssdm_op_BitSelect.i1.i66.i32(i66 %tmp_1, i32 64)
  br i1 %tmp_486, label %2, label %._crit_edge206

; <label>:2                                       ; preds = %._crit_edge209
  %tmp_487 = trunc i66 %tmp_1 to i64
  %p_Result_63 = zext i64 %tmp_487 to i512
  store i3 1, i3* @setState, align 1
  br label %._crit_edge206

; <label>:3                                       ; preds = %codeRepl
  %tmp_78 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i66P(i66* @demux2setPathValue_V, i32 1)
  br i1 %tmp_78, label %_ifconv, label %._crit_edge206

_ifconv:                                          ; preds = %3
  %tmp_s = add i8 %counter_load, 1
  store i8 %tmp_s, i8* @counter, align 1
  %tmp_2 = call i66 @_ssdm_op_Read.ap_fifo.volatile.i66P(i66* @demux2setPathValue_V)
  %tmp_439 = trunc i66 %tmp_2 to i64
  %tmp_440 = call i1 @_ssdm_op_BitSelect.i1.i66.i32(i66 %tmp_2, i32 65)
  %tmp_441 = trunc i8 %tmp_s to i4
  %Lo_assign = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %tmp_s, i6 0)
  %Hi_assign = or i14 %Lo_assign, 63
  %loc_V = zext i64 %tmp_439 to i512
  %tmp_442 = icmp ugt i14 %Lo_assign, %Hi_assign
  %tmp_443 = call i10 @_ssdm_op_BitConcatenate.i10.i4.i6(i4 %tmp_441, i6 0)
  %tmp_444 = trunc i14 %Hi_assign to i10
  %tmp_445 = sub i10 511, %tmp_443
  %tmp_446 = select i1 %tmp_442, i10 %tmp_443, i10 %tmp_444
  %tmp_447 = select i1 %tmp_442, i10 %tmp_444, i10 %tmp_443
  %tmp_448 = select i1 %tmp_442, i10 %tmp_445, i10 %tmp_443
  %tmp_449 = sub i10 511, %tmp_446
  %tmp_450 = zext i10 %tmp_448 to i512
  %tmp_451 = zext i10 %tmp_447 to i512
  %tmp_452 = zext i10 %tmp_449 to i512
  %tmp_453 = shl i512 %loc_V, %tmp_450
  %tmp_454 = call i512 @llvm.part.select.i512(i512 %tmp_453, i32 511, i32 0)
  %tmp_455 = select i1 %tmp_442, i512 %tmp_454, i512 %tmp_453
  %tmp_456 = shl i512 -1, %tmp_451
  %tmp_457 = lshr i512 -1, %tmp_452
  %p_demorgan1 = and i512 %tmp_456, %tmp_457
  %tmp_458 = xor i512 %p_demorgan1, -1
  %tmp_459 = and i512 %p_Val2_s, %tmp_458
  %tmp_460 = and i512 %tmp_455, %p_demorgan1
  %p_Result_s = or i512 %tmp_459, %tmp_460
  %tmp_155 = icmp eq i8 %tmp_s, 7
  %storemerge4 = select i1 %tmp_440, i3 3, i3 -4
  %tmp_88 = or i1 %tmp_440, %tmp_155
  %storemerge5 = select i1 %tmp_88, i3 %storemerge4, i3 1
  store i3 %storemerge5, i3* @setState, align 1
  br label %._crit_edge206

; <label>:4                                       ; preds = %codeRepl
  store i8 0, i8* @counter, align 1
  %tmp_3 = call i40 @_ssdm_op_BitConcatenate.i40.i8.i32(i8 %tmp_count_V, i32 %setCtrlWord_address_V)
  call void @_ssdm_op_Write.axis.volatile.i40P(i40* %memWrCmd_V, i40 %tmp_3)
  call void @_ssdm_op_Write.axis.volatile.i512P(i512* %memWrData_V_V, i512 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* @filterPopSet_V_V, i1 true)
  store i3 0, i3* @setState, align 1
  br label %._crit_edge206

; <label>:5                                       ; preds = %codeRepl
  store i8 0, i8* @counter, align 1
  %tmp_4 = call i40 @_ssdm_op_BitConcatenate.i40.i8.i32(i8 %tmp_count_V, i32 %setCtrlWord_address_V)
  call void @_ssdm_op_Write.axis.volatile.i40P(i40* %memWrCmd_V, i40 %tmp_4)
  call void @_ssdm_op_Write.axis.volatile.i512P(i512* %memWrData_V_V, i512 %p_Val2_s)
  store i3 2, i3* @setState, align 1
  br label %._crit_edge206

; <label>:6                                       ; preds = %codeRepl
  %tmp_79 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i66P(i66* @demux2setPathValue_V, i32 1)
  br i1 %tmp_79, label %_ifconv1, label %._crit_edge206

_ifconv1:                                         ; preds = %6
  %tmp_5 = call i66 @_ssdm_op_Read.ap_fifo.volatile.i66P(i66* @demux2setPathValue_V)
  %tmp_462 = trunc i66 %tmp_5 to i64
  %tmp_463 = call i1 @_ssdm_op_BitSelect.i1.i66.i32(i66 %tmp_5, i32 65)
  %tmp_464 = trunc i8 %counter_load to i4
  %Lo_assign_6 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %counter_load, i6 0)
  %Hi_assign_s = or i14 %Lo_assign_6, 63
  %loc_V_5 = zext i64 %tmp_462 to i512
  %tmp_465 = icmp ugt i14 %Lo_assign_6, %Hi_assign_s
  %tmp_466 = call i10 @_ssdm_op_BitConcatenate.i10.i4.i6(i4 %tmp_464, i6 0)
  %tmp_467 = trunc i14 %Hi_assign_s to i10
  %tmp_468 = sub i10 511, %tmp_466
  %tmp_469 = select i1 %tmp_465, i10 %tmp_466, i10 %tmp_467
  %tmp_470 = select i1 %tmp_465, i10 %tmp_467, i10 %tmp_466
  %tmp_471 = select i1 %tmp_465, i10 %tmp_468, i10 %tmp_466
  %tmp_472 = sub i10 511, %tmp_469
  %tmp_473 = zext i10 %tmp_471 to i512
  %tmp_474 = zext i10 %tmp_470 to i512
  %tmp_475 = zext i10 %tmp_472 to i512
  %tmp_476 = shl i512 %loc_V_5, %tmp_473
  %tmp_477 = call i512 @llvm.part.select.i512(i512 %tmp_476, i32 511, i32 0)
  %tmp_478 = select i1 %tmp_465, i512 %tmp_477, i512 %tmp_476
  %tmp_479 = shl i512 -1, %tmp_474
  %tmp_480 = lshr i512 -1, %tmp_475
  %p_demorgan = and i512 %tmp_479, %tmp_480
  %tmp_481 = xor i512 %p_demorgan, -1
  %tmp_482 = and i512 %p_Val2_s, %tmp_481
  %tmp_483 = and i512 %tmp_478, %p_demorgan
  %p_Result_62 = or i512 %tmp_482, %tmp_483
  %tmp_156 = icmp eq i8 %counter_load, 7
  %storemerge = select i1 %tmp_463, i3 -2, i3 -3
  %tmp_89 = or i1 %tmp_463, %tmp_156
  %storemerge6 = select i1 %tmp_89, i3 %storemerge, i3 2
  store i3 %storemerge6, i3* @setState, align 1
  %tmp_158 = add i8 %counter_load, 1
  store i8 %tmp_158, i8* @counter, align 1
  br label %._crit_edge206

; <label>:7                                       ; preds = %codeRepl
  store i8 0, i8* @counter, align 1
  call void @_ssdm_op_Write.axis.volatile.i512P(i512* %memWrData_V_V, i512 %p_Val2_s)
  store i3 2, i3* @setState, align 1
  br label %._crit_edge206

; <label>:8                                       ; preds = %codeRepl
  store i8 0, i8* @counter, align 1
  call void @_ssdm_op_Write.axis.volatile.i512P(i512* %memWrData_V_V, i512 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* @filterPopSet_V_V, i1 true)
  store i3 0, i3* @setState, align 1
  br label %._crit_edge206

._crit_edge206:                                   ; preds = %8, %7, %_ifconv1, %6, %5, %4, %_ifconv, %3, %2, %._crit_edge209, %1, %0, %codeRepl
  %setValueBuffer_V_flag_4 = phi i1 [ false, %codeRepl ], [ false, %8 ], [ false, %7 ], [ false, %5 ], [ false, %4 ], [ true, %._crit_edge209 ], [ true, %2 ], [ true, %1 ], [ true, %0 ], [ true, %_ifconv ], [ false, %3 ], [ true, %_ifconv1 ], [ false, %6 ]
  %setValueBuffer_V_new_4 = phi i512 [ undef, %codeRepl ], [ undef, %8 ], [ undef, %7 ], [ undef, %5 ], [ undef, %4 ], [ 0, %._crit_edge209 ], [ %p_Result_63, %2 ], [ 0, %1 ], [ 0, %0 ], [ %p_Result_s, %_ifconv ], [ undef, %3 ], [ %p_Result_62, %_ifconv1 ], [ undef, %6 ]
  br i1 %setValueBuffer_V_flag_4, label %mergeST, label %._crit_edge206.new

mergeST:                                          ; preds = %._crit_edge206
  store i512 %setValueBuffer_V_new_4, i512* @setValueBuffer_V, align 16
  br label %._crit_edge206.new

._crit_edge206.new:                               ; preds = %mergeST, %._crit_edge206
  ret void
}

define internal fastcc void @memcachedPipeline_memRead(i40* %memRdCtrl_V) {
  call void (...)* @_ssdm_op_SpecInterface(i40* %memRdCtrl_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1666, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1667, [1 x i8]* @str1667, [8 x i8]* @str1666) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1662, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1663, [1 x i8]* @str1663, [8 x i8]* @str1662) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1658, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1659, [1 x i8]* @str1659, [8 x i8]* @str1658) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1654, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1655, [1 x i8]* @str1655, [8 x i8]* @str1654) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @memRd2comp_V, [8 x i8]* @str1650, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1651, [1 x i8]* @str1651, [8 x i8]* @str1650) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @memRd2comp_V, [8 x i8]* @str1646, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1647, [1 x i8]* @str1647, [8 x i8]* @str1646) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @memRd2comp_V, [8 x i8]* @str1642, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1643, [1 x i8]* @str1643, [8 x i8]* @str1642) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1638, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1639, [1 x i8]* @str1639, [8 x i8]* @str1638) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1634, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1635, [1 x i8]* @str1635, [8 x i8]* @str1634) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1630, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1631, [1 x i8]* @str1631, [8 x i8]* @str1630) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1626, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1627, [1 x i8]* @str1627, [8 x i8]* @str1626) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @cc2memRead_V, [8 x i8]* @str1622, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1623, [1 x i8]* @str1623, [8 x i8]* @str1622) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @cc2memRead_V, [8 x i8]* @str1618, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1619, [1 x i8]* @str1619, [8 x i8]* @str1618) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @cc2memRead_V, [8 x i8]* @str1614, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1615, [1 x i8]* @str1615, [8 x i8]* @str1614) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str246) nounwind
  %memRdState_load = load i1* @memRdState, align 1
  br i1 %memRdState_load, label %6, label %1

; <label>:1                                       ; preds = %0
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @cc2memReadMd_V, i32 1)
  br i1 %tmp, label %2, label %._crit_edge362

; <label>:2                                       ; preds = %1
  %tmp_83 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @cc2memRead_V, i32 1)
  br i1 %tmp_83, label %3, label %._crit_edge362

; <label>:3                                       ; preds = %2
  %tmp1 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @cc2memReadMd_V)
  %tmp_operation_V = trunc i64 %tmp1 to i8
  %tmp_keyLength_V = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp1, i32 40, i32 47)
  %tmp_1 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @cc2memRead_V)
  %p_Val2_s = trunc i130 %tmp_1 to i128
  %tmp_EOP_V_17 = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_1, i32 129)
  %tmp_s = icmp eq i8 %tmp_operation_V, 8
  br i1 %tmp_s, label %._crit_edge364_ifconv, label %4

; <label>:4                                       ; preds = %3
  %p_Result_s = call i7 @_ssdm_op_PartSelect.i7.i64.i32.i32(i64 %tmp1, i32 8, i32 14)
  %tmp_92 = call i4 @_ssdm_op_PartSelect.i4.i64.i32.i32(i64 %tmp1, i32 44, i32 47)
  %memData_count_V_cast = zext i4 %tmp_92 to i5
  %r_V = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp_92, i4 0)
  %tmp_313 = icmp ugt i8 %tmp_keyLength_V, %r_V
  %p_0184_1_0_v_cast_cast_cast = select i1 %tmp_313, i5 2, i5 1
  %memData_count_V = add i5 %p_0184_1_0_v_cast_cast_cast, %memData_count_V_cast
  %tmp_90 = call i37 @_ssdm_op_BitConcatenate.i37.i5.i22.i7.i3(i5 %memData_count_V, i22 0, i7 %p_Result_s, i3 0)
  %tmp_2 = zext i37 %tmp_90 to i40
  call void @_ssdm_op_Write.axis.volatile.i40P(i40* %memRdCtrl_V, i40 %tmp_2)
  br label %._crit_edge364_ifconv

._crit_edge364_ifconv:                            ; preds = %4, %3
  %tmp_314 = icmp ult i8 %tmp_keyLength_V, 17
  %tmp_94 = call i5 @_ssdm_op_PartSelect.i5.i64.i32.i32(i64 %tmp1, i32 40, i32 44)
  %tmp_315 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_94, i3 0)
  %tmp_492 = sub i8 -128, %tmp_315
  %tmp_493 = zext i8 %tmp_492 to i128
  %tmp_494 = lshr i128 -1, %tmp_493
  %p_Result_66 = and i128 %p_Val2_s, %tmp_494
  %tmp_496 = sub i8 -128, %tmp_315
  %tmp_497 = zext i8 %tmp_496 to i128
  %tmp_498 = lshr i128 -1, %tmp_497
  %p_Result_67 = and i128 %p_Result_66, %tmp_498
  %tmp_data_V = select i1 %tmp_314, i128 %p_Result_67, i128 %p_Val2_s
  %tmp_107 = call i2 @_ssdm_op_PartSelect.i2.i130.i32.i32(i130 %tmp_1, i32 128, i32 129)
  %tmp_3 = call i130 @_ssdm_op_BitConcatenate.i130.i2.i128(i2 %tmp_107, i128 %tmp_data_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @memRd2comp_V, i130 %tmp_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* @memRd2compMd_V, i64 %tmp1)
  br i1 %tmp_EOP_V_17, label %._crit_edge366, label %5

; <label>:5                                       ; preds = %._crit_edge364_ifconv
  store i1 true, i1* @memRdState, align 1
  br label %._crit_edge366

._crit_edge366:                                   ; preds = %5, %._crit_edge364_ifconv
  br label %._crit_edge362

._crit_edge362:                                   ; preds = %._crit_edge366, %2, %1
  br label %._crit_edge

; <label>:6                                       ; preds = %0
  %tmp_5 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @cc2memRead_V)
  %tmp_EOP_V = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_5, i32 129)
  call void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130* @memRd2comp_V, i130 %tmp_5)
  br i1 %tmp_EOP_V, label %7, label %._crit_edge367

; <label>:7                                       ; preds = %6
  store i1 false, i1* @memRdState, align 1
  br label %._crit_edge367

._crit_edge367:                                   ; preds = %7, %6
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge367, %._crit_edge362
  ret void
}

define internal fastcc void @memcachedPipeline_memWrite(i40* %memWrCtrl_V, i512* %memWrData_V_V, i32* %addressReturnOut_V_V, i32* %addressAssignDramIn_V_V, i32* %addressAssignFlashIn_V_V, i1* nocapture %flushReq_V, i1 %flushAck_V, i1* nocapture %flushDone_V) {
  call void (...)* @_ssdm_op_SpecInterface(i32* %addressAssignFlashIn_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %addressAssignDramIn_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %addressReturnOut_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i40* %memWrCtrl_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i512* %memWrData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* @comp2memWrStatus_V_bin, [8 x i8]* @str1947, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1948, [1 x i8]* @str1948, [8 x i8]* @str1947)
  %flushAck_V_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %flushAck_V)
  call void (...)* @_ssdm_op_SpecInterface(i1* @dec2cc_V_V, [8 x i8]* @str1718, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1719, [1 x i8]* @str1719, [8 x i8]* @str1718)
  call void (...)* @_ssdm_op_SpecInterface(i512* @comp2memWrMemData_V_V, [8 x i8]* @str1714, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1715, [1 x i8]* @str1715, [8 x i8]* @str1714)
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1710, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1711, [1 x i8]* @str1711, [8 x i8]* @str1710) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1706, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1707, [1 x i8]* @str1707, [8 x i8]* @str1706) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1702, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1703, [1 x i8]* @str1703, [8 x i8]* @str1702) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1698, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1699, [1 x i8]* @str1699, [8 x i8]* @str1698) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @comp2memWrKey_V, [8 x i8]* @str1694, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1695, [1 x i8]* @str1695, [8 x i8]* @str1694) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @comp2memWrKey_V, [8 x i8]* @str1690, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1691, [1 x i8]* @str1691, [8 x i8]* @str1690) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @comp2memWrKey_V, [8 x i8]* @str1686, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1687, [1 x i8]* @str1687, [8 x i8]* @str1686) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1682, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1683, [1 x i8]* @str1683, [8 x i8]* @str1682) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1678, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1679, [1 x i8]* @str1679, [8 x i8]* @str1678) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1674, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1675, [1 x i8]* @str1675, [8 x i8]* @str1674) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1670, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1671, [1 x i8]* @str1671, [8 x i8]* @str1670) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str221) nounwind
  %guard_variable_for_memWrite_st = load i1* @guard_variable_for_memWrite_st, align 1
  %htMemWriteInputStatusWord_bin_s = load i1* @htMemWriteInputStatusWord_bin_s, align 1
  %htMemWriteInputStatusWord_bin_18 = load i1* @htMemWriteInputStatusWord_bin_4, align 1
  %htMemWriteInputStatusWord_bin_19 = load i1* @htMemWriteInputStatusWord_bin_1, align 1
  %htMemWriteInputStatusWord_bin_20 = load i1* @htMemWriteInputStatusWord_bin_5, align 1
  %htMemWriteInputStatusWord_bin_21 = load i1* @htMemWriteInputStatusWord_bin_2, align 1
  %htMemWriteInputStatusWord_bin_22 = load i1* @htMemWriteInputStatusWord_bin_6, align 1
  %htMemWriteInputStatusWord_bin_23 = load i1* @htMemWriteInputStatusWord_bin_3, align 1
  %htMemWriteInputStatusWord_bin_24 = load i1* @htMemWriteInputStatusWord_bin_7, align 1
  br i1 %guard_variable_for_memWrite_st, label %._crit_edge, label %._crit_edge2559.0

._crit_edge2559.0:                                ; preds = %0
  store i1 true, i1* @guard_variable_for_memWrite_st, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge2559.0, %0
  %htMemWriteInputStatusWord_bin_25 = phi i1 [ true, %._crit_edge2559.0 ], [ false, %0 ]
  %htMemWriteInputStatusWord_bin_26 = phi i1 [ false, %._crit_edge2559.0 ], [ %htMemWriteInputStatusWord_bin_s, %0 ]
  %htMemWriteInputStatusWord_bin_27 = phi i1 [ false, %._crit_edge2559.0 ], [ %htMemWriteInputStatusWord_bin_18, %0 ]
  %htMemWriteInputStatusWord_bin_28 = phi i1 [ false, %._crit_edge2559.0 ], [ %htMemWriteInputStatusWord_bin_19, %0 ]
  %htMemWriteInputStatusWord_bin_29 = phi i1 [ false, %._crit_edge2559.0 ], [ %htMemWriteInputStatusWord_bin_20, %0 ]
  %htMemWriteInputStatusWord_bin_30 = phi i1 [ false, %._crit_edge2559.0 ], [ %htMemWriteInputStatusWord_bin_21, %0 ]
  %htMemWriteInputStatusWord_bin_31 = phi i1 [ false, %._crit_edge2559.0 ], [ %htMemWriteInputStatusWord_bin_22, %0 ]
  %htMemWriteInputStatusWord_bin_32 = phi i1 [ false, %._crit_edge2559.0 ], [ %htMemWriteInputStatusWord_bin_23, %0 ]
  %htMemWriteInputStatusWord_bin_8 = phi i1 [ false, %._crit_edge2559.0 ], [ %htMemWriteInputStatusWord_bin_24, %0 ]
  %memWrState_load = load i3* @memWrState, align 1
  %memWriteAddress_V_load = load i10* @memWriteAddress_V, align 2
  %outputWord_operation_V = load i8* @htMemWriteInputWordMd_operatio, align 1
  %tempAddress_V = load i32* @htMemWriteInputWordMd_metadata, align 4
  %htMemWriteInputWordMd_valueLen = load i16* @htMemWriteInputWordMd_valueLen, align 2
  %memWr_location_V_load = load i2* @memWr_location_V, align 1
  switch i3 %memWrState_load, label %._crit_edge2569 [
    i3 0, label %1
    i3 1, label %8
    i3 2, label %24
    i3 -4, label %28
    i3 -3, label %30
    i3 -2, label %32
    i3 3, label %34
    i3 -1, label %38
  ]

; <label>:1                                       ; preds = %._crit_edge
  %memWr_memInitialized_load = load i1* @memWr_memInitialized, align 1
  br i1 %memWr_memInitialized_load, label %2, label %7

; <label>:2                                       ; preds = %1
  %tmp_86 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64* @comp2memWrMd_V, i32 1)
  br i1 %tmp_86, label %3, label %._crit_edge2569

; <label>:3                                       ; preds = %2
  %tmp_87 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i8P(i8* @comp2memWrStatus_V_bin, i32 1)
  br i1 %tmp_87, label %comp2decWord.exit, label %._crit_edge2569

comp2decWord.exit:                                ; preds = %3
  store i10 0, i10* @memWriteAddress_V, align 2
  %tmp_bin = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* @comp2memWrStatus_V_bin)
  %tmp_523 = trunc i8 %tmp_bin to i1
  %tmp_524 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_bin, i32 4)
  %tmp_525 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_bin, i32 1)
  %tmp_526 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_bin, i32 5)
  %tmp_527 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_bin, i32 2)
  %tmp_528 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_bin, i32 6)
  %tmp_529 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_bin, i32 3)
  %tmp_530 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_bin, i32 7)
  %tmp9 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* @comp2memWrMd_V)
  %tmp_531 = trunc i64 %tmp9 to i8
  store i8 %tmp_531, i8* @htMemWriteInputWordMd_operatio, align 4
  %tmp_metadata_V_load_new = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %tmp9, i32 8, i32 39)
  store i32 %tmp_metadata_V_load_new, i32* @htMemWriteInputWordMd_metadata, align 4
  %tmp_keyLength_V_load_new = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp9, i32 40, i32 47)
  store i8 %tmp_keyLength_V_load_new, i8* @htMemWriteInputWordMd_keyLengt, align 4
  %tmp_valueLength_V_3_load_new = call i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64 %tmp9, i32 48, i32 63)
  store i16 %tmp_valueLength_V_3_load_new, i16* @htMemWriteInputWordMd_valueLen, align 2
  %tmp_s = icmp eq i8 %tmp_531, 8
  br i1 %tmp_s, label %4, label %5

; <label>:4                                       ; preds = %comp2decWord.exit
  store i3 -4, i3* @memWrState, align 1
  store i1 true, i1* @memWr_flushReq_V, align 1
  store i1 false, i1* @memWr_flushDone_V, align 1
  br label %6

; <label>:5                                       ; preds = %comp2decWord.exit
  store i3 1, i3* @memWrState, align 1
  br label %6

; <label>:6                                       ; preds = %5, %4
  br label %._crit_edge2569

; <label>:7                                       ; preds = %1
  store i1 true, i1* @memWr_memInitialized, align 1
  store i3 -1, i3* @memWrState, align 1
  br label %._crit_edge2569

; <label>:8                                       ; preds = %._crit_edge
  %tmp_63 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i512P(i512* @comp2memWrMemData_V_V, i32 1)
  br i1 %tmp_63, label %9, label %._crit_edge2573

; <label>:9                                       ; preds = %8
  %tmp_V_107 = call i512 @_ssdm_op_Read.ap_fifo.volatile.i512P(i512* @comp2memWrMemData_V_V)
  %htMemWriteInputWordMd_keyLengt = load i8* @htMemWriteInputWordMd_keyLengt, align 4
  %tmp_320 = icmp eq i8 %outputWord_operation_V, 0
  br i1 %tmp_320, label %.preheader2553.0, label %12

.preheader2553.0:                                 ; preds = %9
  %memWr_location_V_flag_1 = or i1 %htMemWriteInputStatusWord_bin_31, %htMemWriteInputStatusWord_bin_8
  %p_memWr_location_V_load = select i1 %htMemWriteInputStatusWord_bin_31, i2 -2, i2 -1
  %memWr_location_V_loc_1 = select i1 %memWr_location_V_flag_1, i2 %p_memWr_location_V_load, i2 %memWr_location_V_load
  %memWr_location_V_new_1 = select i1 %htMemWriteInputStatusWord_bin_29, i2 1, i2 -2
  %tmp_91 = or i1 %htMemWriteInputStatusWord_bin_29, %htMemWriteInputStatusWord_bin_31
  %p_memWr_location_V_new_1 = select i1 %tmp_91, i2 %memWr_location_V_new_1, i2 -1
  %tmp1 = or i1 %memWr_location_V_flag_1, %htMemWriteInputStatusWord_bin_27
  %brmerge1 = or i1 %tmp1, %htMemWriteInputStatusWord_bin_29
  %p_mux1 = select i1 %htMemWriteInputStatusWord_bin_27, i2 0, i2 %p_memWr_location_V_new_1
  %not_htMemWriteInputStatusWord_s = xor i1 %htMemWriteInputStatusWord_bin_27, true
  %p_memWr_location_V_loc_1_cast = zext i1 %not_htMemWriteInputStatusWord_s to i2
  %tmp_92 = or i1 %htMemWriteInputStatusWord_bin_27, %htMemWriteInputStatusWord_bin_29
  %p_mux2 = select i1 %tmp_92, i2 %p_memWr_location_V_loc_1_cast, i2 %memWr_location_V_loc_1
  br i1 %brmerge1, label %.critedge, label %10

; <label>:10                                      ; preds = %.preheader2553.0
  call void @_ssdm_op_Write.ap_fifo.volatile.i57P(i57* @memWr2out_V, i57 -72057594037927936)
  br label %11

.critedge:                                        ; preds = %.preheader2553.0
  %r_V_1 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %p_mux2, i7 0)
  %tmp_322 = or i9 %r_V_1, 88
  %tmp_387_cast = zext i9 %tmp_322 to i10
  %Hi_assign = add i10 -1, %tmp_387_cast
  %Hi_assign_cast = sext i10 %Hi_assign to i32
  %Lo_assign = or i9 %r_V_1, 56
  %Lo_assign_cast1 = zext i9 %Lo_assign to i10
  %Lo_assign_cast = zext i9 %Lo_assign to i32
  %tmp_532 = icmp ugt i32 %Lo_assign_cast, %Hi_assign_cast
  %tmp_533 = zext i9 %Lo_assign to i10
  %tmp_534 = call i512 @llvm.part.select.i512(i512 %tmp_V_107, i32 511, i32 0)
  %tmp_535 = sub i10 %tmp_533, %Hi_assign
  %tmp_536 = xor i10 %tmp_533, 511
  %tmp_537 = sub i10 %Hi_assign, %tmp_533
  %tmp_538 = select i1 %tmp_532, i10 %tmp_535, i10 %tmp_537
  %tmp_539 = select i1 %tmp_532, i512 %tmp_534, i512 %tmp_V_107
  %tmp_540 = select i1 %tmp_532, i10 %tmp_536, i10 %tmp_533
  %tmp_541 = sub i10 511, %tmp_538
  %tmp_542 = zext i10 %tmp_540 to i512
  %tmp_543 = zext i10 %tmp_541 to i512
  %tmp_544 = lshr i512 %tmp_539, %tmp_542
  %tmp_545 = lshr i512 -1, %tmp_543
  %p_Result_s = and i512 %tmp_544, %tmp_545
  %outputWord_address_V = trunc i512 %p_Result_s to i32
  %Hi_assign_1 = add i10 -1, %Lo_assign_cast1
  %Hi_assign_15_cast = sext i10 %Hi_assign_1 to i32
  %Lo_assign_8 = or i9 %r_V_1, 40
  %Lo_assign_10_cast = zext i9 %Lo_assign_8 to i32
  %tmp_548 = icmp ugt i32 %Lo_assign_10_cast, %Hi_assign_15_cast
  %tmp_549 = zext i9 %Lo_assign_8 to i10
  %tmp_550 = call i512 @llvm.part.select.i512(i512 %tmp_V_107, i32 511, i32 0)
  %tmp_551 = sub i10 %tmp_549, %Hi_assign_1
  %tmp_552 = xor i10 %tmp_549, 511
  %tmp_553 = sub i10 %Hi_assign_1, %tmp_549
  %tmp_554 = select i1 %tmp_548, i10 %tmp_551, i10 %tmp_553
  %tmp_555 = select i1 %tmp_548, i512 %tmp_550, i512 %tmp_V_107
  %tmp_556 = select i1 %tmp_548, i10 %tmp_552, i10 %tmp_549
  %tmp_557 = sub i10 511, %tmp_554
  %tmp_558 = zext i10 %tmp_556 to i512
  %tmp_559 = zext i10 %tmp_557 to i512
  %tmp_560 = lshr i512 %tmp_555, %tmp_558
  %tmp_561 = lshr i512 -1, %tmp_559
  %p_Result_68 = and i512 %tmp_560, %tmp_561
  %outputWord_valueLength_V = trunc i512 %p_Result_68 to i16
  %tmp_2 = call i57 @_ssdm_op_BitConcatenate.i57.i9.i16.i32(i9 0, i16 %outputWord_valueLength_V, i32 %outputWord_address_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i57P(i57* @memWr2out_V, i57 %tmp_2)
  br label %11

; <label>:11                                      ; preds = %.critedge, %10
  %memWr_location_V_flag_4 = phi i1 [ true, %.critedge ], [ false, %10 ]
  %memWr_location_V_new_4 = phi i2 [ %p_mux1, %.critedge ], [ %p_memWr_location_V_new_1, %10 ]
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* @dec2cc_V_V, i1 true)
  store i3 3, i3* @memWrState, align 1
  br label %._crit_edge2586

; <label>:12                                      ; preds = %9
  %tmp_321 = icmp eq i8 %outputWord_operation_V, 1
  br i1 %tmp_321, label %.preheader2552.0_ifconv, label %21

.preheader2552.0_ifconv:                          ; preds = %12
  %memWr_replaceLocation_V_load = load i2* @memWr_replaceLocation_V, align 1
  %not_htMemWriteInputStatusWord_1 = xor i1 %htMemWriteInputStatusWord_bin_8, true
  %memWr_location_V_load_s = select i1 %htMemWriteInputStatusWord_bin_8, i2 %memWr_location_V_load, i2 -1
  %p_memWr_replaceLocation_V_load = select i1 %htMemWriteInputStatusWord_bin_8, i2 -1, i2 %memWr_replaceLocation_V_load
  %memWr_location_V_flag_5 = and i1 %htMemWriteInputStatusWord_bin_32, %not_htMemWriteInputStatusWord_1
  %memWr_location_V_loc_4 = select i1 %htMemWriteInputStatusWord_bin_32, i2 %memWr_location_V_load_s, i2 %memWr_location_V_load
  %not_htMemWriteInputStatusWord_2 = xor i1 %htMemWriteInputStatusWord_bin_32, true
  %memWr_replaceLocation_V_flag = and i1 %htMemWriteInputStatusWord_bin_8, %not_htMemWriteInputStatusWord_2
  %memWr_replaceLocation_V_loc = select i1 %htMemWriteInputStatusWord_bin_32, i2 %memWr_replaceLocation_V_load, i2 %p_memWr_replaceLocation_V_load
  %not_htMemWriteInputStatusWord_3 = xor i1 %htMemWriteInputStatusWord_bin_31, true
  %p_s = select i1 %htMemWriteInputStatusWord_bin_31, i2 -1, i2 -2
  %memWr_location_V_loc_4_s = select i1 %htMemWriteInputStatusWord_bin_31, i2 %memWr_location_V_loc_4, i2 -2
  %p_memWr_replaceLocation_V_loc = select i1 %htMemWriteInputStatusWord_bin_31, i2 -2, i2 %memWr_replaceLocation_V_loc
  %memWr_location_V_flag_5_s = and i1 %htMemWriteInputStatusWord_bin_30, %not_htMemWriteInputStatusWord_3
  %memWr_location_V_new_6 = select i1 %htMemWriteInputStatusWord_bin_30, i2 %p_s, i2 -1
  %memWr_location_V_loc_5 = select i1 %htMemWriteInputStatusWord_bin_30, i2 %memWr_location_V_loc_4_s, i2 %memWr_location_V_loc_4
  %not_htMemWriteInputStatusWord_4 = xor i1 %htMemWriteInputStatusWord_bin_30, true
  %p_memWr_replaceLocation_V_flag = and i1 %htMemWriteInputStatusWord_bin_31, %not_htMemWriteInputStatusWord_4
  %p_1 = select i1 %htMemWriteInputStatusWord_bin_30, i2 -1, i2 -2
  %tmp_93 = or i1 %htMemWriteInputStatusWord_bin_30, %htMemWriteInputStatusWord_bin_31
  %memWr_replaceLocation_V_new_1 = select i1 %tmp_93, i2 %p_1, i2 -1
  %memWr_replaceLocation_V_loc_1 = select i1 %htMemWriteInputStatusWord_bin_30, i2 %memWr_replaceLocation_V_loc, i2 %p_memWr_replaceLocation_V_loc
  %not_htMemWriteInputStatusWord_5 = xor i1 %htMemWriteInputStatusWord_bin_29, true
  %memWr_location_V_new_6_s = select i1 %htMemWriteInputStatusWord_bin_29, i2 %memWr_location_V_new_6, i2 1
  %memWr_location_V_loc_5_s = select i1 %htMemWriteInputStatusWord_bin_29, i2 %memWr_location_V_loc_5, i2 1
  %p_memWr_replaceLocation_V_new_1 = select i1 %htMemWriteInputStatusWord_bin_29, i2 1, i2 %memWr_replaceLocation_V_new_1
  %p_memWr_replaceLocation_V_loc_1 = select i1 %htMemWriteInputStatusWord_bin_29, i2 1, i2 %memWr_replaceLocation_V_loc_1
  %memWr_location_V_flag_6_s = and i1 %htMemWriteInputStatusWord_bin_28, %not_htMemWriteInputStatusWord_5
  %memWr_location_V_new_7 = select i1 %htMemWriteInputStatusWord_bin_28, i2 %memWr_location_V_new_6_s, i2 %memWr_location_V_new_6
  %memWr_location_V_loc_6 = select i1 %htMemWriteInputStatusWord_bin_28, i2 %memWr_location_V_loc_5_s, i2 %memWr_location_V_loc_5
  %not_htMemWriteInputStatusWord_6 = xor i1 %htMemWriteInputStatusWord_bin_28, true
  %p_memWr_replaceLocation_V_flag_1 = and i1 %htMemWriteInputStatusWord_bin_29, %not_htMemWriteInputStatusWord_6
  %memWr_replaceLocation_V_new_2 = select i1 %htMemWriteInputStatusWord_bin_28, i2 %memWr_replaceLocation_V_new_1, i2 %p_memWr_replaceLocation_V_new_1
  %memWr_replaceLocation_V_loc_2 = select i1 %htMemWriteInputStatusWord_bin_28, i2 %memWr_replaceLocation_V_loc_1, i2 %p_memWr_replaceLocation_V_loc_1
  %not_htMemWriteInputStatusWord_7 = xor i1 %htMemWriteInputStatusWord_bin_27, true
  %memWr_location_V_new_7_s = select i1 %htMemWriteInputStatusWord_bin_27, i2 %memWr_location_V_new_7, i2 0
  %memWr_location_V_loc_6_s = select i1 %htMemWriteInputStatusWord_bin_27, i2 %memWr_location_V_loc_6, i2 0
  %p_memWr_replaceLocation_V_new_2 = select i1 %htMemWriteInputStatusWord_bin_27, i2 0, i2 %memWr_replaceLocation_V_new_2
  %p_memWr_replaceLocation_V_loc_2 = select i1 %htMemWriteInputStatusWord_bin_27, i2 0, i2 %memWr_replaceLocation_V_loc_2
  %memWr_location_V_flag_7_s = and i1 %htMemWriteInputStatusWord_bin_26, %not_htMemWriteInputStatusWord_7
  %tmp4 = or i1 %memWr_location_V_flag_5_s, %memWr_location_V_flag_6_s
  %tmp5 = or i1 %memWr_location_V_flag_5, %memWr_location_V_flag_7_s
  %memWr_location_V_flag_8 = or i1 %tmp5, %tmp4
  %memWr_location_V_new_8 = select i1 %htMemWriteInputStatusWord_bin_26, i2 %memWr_location_V_new_7_s, i2 %memWr_location_V_new_7
  %memWr_location_V_loc_7 = select i1 %htMemWriteInputStatusWord_bin_26, i2 %memWr_location_V_loc_6_s, i2 %memWr_location_V_loc_6
  %not_htMemWriteInputStatusWord_8 = xor i1 %htMemWriteInputStatusWord_bin_26, true
  %p_memWr_replaceLocation_V_flag_2 = and i1 %htMemWriteInputStatusWord_bin_27, %not_htMemWriteInputStatusWord_8
  %tmp6 = or i1 %p_memWr_replaceLocation_V_flag, %p_memWr_replaceLocation_V_flag_1
  %tmp7 = or i1 %memWr_replaceLocation_V_flag, %p_memWr_replaceLocation_V_flag_2
  %memWr_replaceLocation_V_flag_3 = or i1 %tmp7, %tmp6
  %memWr_replaceLocation_V_new_3 = select i1 %htMemWriteInputStatusWord_bin_26, i2 %memWr_replaceLocation_V_new_2, i2 %p_memWr_replaceLocation_V_new_2
  %memWr_replaceLocation_V_loc_3 = select i1 %htMemWriteInputStatusWord_bin_26, i2 %memWr_replaceLocation_V_loc_2, i2 %p_memWr_replaceLocation_V_loc_2
  %brmerge = or i1 %memWr_location_V_flag_8, %memWr_replaceLocation_V_flag_3
  br i1 %memWr_replaceLocation_V_flag_3, label %mergeST42, label %.preheader2552.4.new

; <label>:13                                      ; preds = %.preheader2552.4.new
  %tmp_564 = call i5 @_ssdm_op_PartSelect.i5.i16.i32.i32(i16 %htMemWriteInputWordMd_valueLen, i32 11, i32 15)
  %icmp = icmp eq i5 %tmp_564, 0
  br i1 %icmp, label %14, label %._crit_edge2580

; <label>:14                                      ; preds = %13
  %tmp_71 = call i1 @_ssdm_op_NbReadReq.axis.i32P(i32* %addressAssignDramIn_V_V, i32 1)
  br i1 %tmp_71, label %._crit_edge2580, label %._crit_edge2579

._crit_edge2580:                                  ; preds = %14, %13
  %tmp_604 = call i5 @_ssdm_op_PartSelect.i5.i16.i32.i32(i16 %htMemWriteInputWordMd_valueLen, i32 11, i32 15)
  %icmp4 = icmp eq i5 %tmp_604, 0
  br i1 %icmp4, label %._crit_edge2583, label %15

; <label>:15                                      ; preds = %._crit_edge2580
  %tmp_72 = call i1 @_ssdm_op_NbReadReq.axis.i32P(i32* %addressAssignFlashIn_V_V, i32 1)
  br i1 %tmp_72, label %._crit_edge2583, label %._crit_edge2579

._crit_edge2579:                                  ; preds = %.preheader2552.4.new, %15, %14
  call void @_ssdm_op_Write.ap_fifo.volatile.i57P(i57* @memWr2out_V, i57 -71776119061217280)
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* @dec2cc_V_V, i1 true)
  store i3 3, i3* @memWrState, align 1
  br label %._crit_edge2586

._crit_edge2583:                                  ; preds = %._crit_edge2580, %15
  br i1 %memWr_location_V_flag_8, label %._crit_edge2587, label %._crit_edge2586

._crit_edge2587:                                  ; preds = %._crit_edge2583
  %sel_SEBB = select i1 %memWr_replaceLocation_V_flag_3, i2 %memWr_replaceLocation_V_loc_3, i2 %memWr_location_V_new_8
  %tmp_96 = call i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8 %htMemWriteInputWordMd_keyLengt, i32 4, i32 7)
  %outputWordMemCtrl_count_V_cast = zext i4 %tmp_96 to i5
  %r_V_3 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp_96, i4 0)
  %tmp_326 = icmp ugt i8 %htMemWriteInputWordMd_keyLengt, %r_V_3
  %p_01416_1_0_v_cast_cast_cast = select i1 %tmp_326, i5 2, i5 1
  %outputWordMemCtrl_count_V = add i5 %p_01416_1_0_v_cast_cast_cast, %outputWordMemCtrl_count_V_cast
  %tmp_605 = trunc i32 %tempAddress_V to i7
  %tmp_95 = call i37 @_ssdm_op_BitConcatenate.i37.i5.i22.i7.i3(i5 %outputWordMemCtrl_count_V, i22 0, i7 %tmp_605, i3 0)
  %tmp_4 = zext i37 %tmp_95 to i40
  call void @_ssdm_op_Write.axis.volatile.i40P(i40* %memWrCtrl_V, i40 %tmp_4)
  %tmp_98 = select i1 %memWr_replaceLocation_V_flag_3, i2 %memWr_replaceLocation_V_loc_3, i2 %memWr_location_V_loc_7
  %r_V_4 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %tmp_98, i7 0)
  %Lo_assign_9 = zext i9 %r_V_4 to i32
  %Lo_assign_4 = or i9 %r_V_4, 8
  %Lo_assign_12_cast1 = zext i9 %Lo_assign_4 to i10
  %Lo_assign_12_cast = zext i9 %Lo_assign_4 to i32
  %Hi_assign_5 = add i10 -1, %Lo_assign_12_cast1
  %Hi_assign_16_cast = sext i10 %Hi_assign_5 to i32
  %loc_V = zext i8 %htMemWriteInputWordMd_keyLengt to i512
  %tmp_606 = icmp ugt i32 %Lo_assign_9, %Hi_assign_16_cast
  %tmp_607 = zext i9 %r_V_4 to i10
  %tmp_608 = xor i10 %tmp_607, 511
  %tmp_609 = select i1 %tmp_606, i10 %tmp_607, i10 %Hi_assign_5
  %tmp_610 = select i1 %tmp_606, i10 %Hi_assign_5, i10 %tmp_607
  %tmp_611 = select i1 %tmp_606, i10 %tmp_608, i10 %tmp_607
  %tmp_612 = sub i10 511, %tmp_609
  %tmp_613 = zext i10 %tmp_611 to i512
  %tmp_614 = zext i10 %tmp_610 to i512
  %tmp_615 = zext i10 %tmp_612 to i512
  %tmp_616 = shl i512 %loc_V, %tmp_613
  %tmp_617 = call i512 @llvm.part.select.i512(i512 %tmp_616, i32 511, i32 0)
  %tmp_618 = select i1 %tmp_606, i512 %tmp_617, i512 %tmp_616
  %tmp_619 = shl i512 -1, %tmp_614
  %tmp_620 = lshr i512 -1, %tmp_615
  %p_demorgan7 = and i512 %tmp_619, %tmp_620
  %tmp_621 = xor i512 %p_demorgan7, -1
  %tmp_622 = and i512 %tmp_V_107, %tmp_621
  %tmp_623 = and i512 %tmp_618, %p_demorgan7
  %p_Result_69 = or i512 %tmp_622, %tmp_623
  %Lo_assign_5 = or i9 %r_V_4, 40
  %Lo_assign_13_cast1 = zext i9 %Lo_assign_5 to i10
  %Lo_assign_13_cast = zext i9 %Lo_assign_5 to i32
  %Hi_assign_6 = add i10 -1, %Lo_assign_13_cast1
  %Hi_assign_17_cast = sext i10 %Hi_assign_6 to i32
  %tmp_625 = icmp ugt i32 %Lo_assign_12_cast, %Hi_assign_17_cast
  %tmp_626 = zext i9 %Lo_assign_4 to i10
  %tmp_627 = xor i10 %tmp_626, 511
  %tmp_628 = select i1 %tmp_625, i10 %tmp_626, i10 %Hi_assign_6
  %tmp_629 = select i1 %tmp_625, i10 %Hi_assign_6, i10 %tmp_626
  %tmp_630 = select i1 %tmp_625, i10 %tmp_627, i10 %tmp_626
  %tmp_631 = sub i10 511, %tmp_628
  %tmp_632 = zext i10 %tmp_630 to i512
  %tmp_633 = zext i10 %tmp_629 to i512
  %tmp_634 = zext i10 %tmp_631 to i512
  %tmp_635 = shl i512 24, %tmp_632
  %tmp_636 = call i512 @llvm.part.select.i512(i512 %tmp_635, i32 511, i32 0)
  %tmp_637 = select i1 %tmp_625, i512 %tmp_636, i512 %tmp_635
  %tmp_638 = shl i512 -1, %tmp_633
  %tmp_639 = lshr i512 -1, %tmp_634
  %p_demorgan8 = and i512 %tmp_638, %tmp_639
  %tmp_640 = xor i512 %p_demorgan8, -1
  %tmp_641 = and i512 %p_Result_69, %tmp_640
  %tmp_642 = and i512 %tmp_637, %p_demorgan8
  %p_Result_70 = or i512 %tmp_641, %tmp_642
  %Lo_assign_6 = or i9 %r_V_4, 56
  %Lo_assign_14_cast1 = zext i9 %Lo_assign_6 to i10
  %Lo_assign_14_cast = zext i9 %Lo_assign_6 to i32
  %Hi_assign_7 = add i10 -1, %Lo_assign_14_cast1
  %Hi_assign_18_cast = sext i10 %Hi_assign_7 to i32
  %loc_V_7 = zext i16 %htMemWriteInputWordMd_valueLen to i512
  %tmp_644 = icmp ugt i32 %Lo_assign_13_cast, %Hi_assign_18_cast
  %tmp_645 = zext i9 %Lo_assign_5 to i10
  %tmp_646 = xor i10 %tmp_645, 511
  %tmp_647 = select i1 %tmp_644, i10 %tmp_645, i10 %Hi_assign_7
  %tmp_648 = select i1 %tmp_644, i10 %Hi_assign_7, i10 %tmp_645
  %tmp_649 = select i1 %tmp_644, i10 %tmp_646, i10 %tmp_645
  %tmp_650 = sub i10 511, %tmp_647
  %tmp_651 = zext i10 %tmp_649 to i512
  %tmp_652 = zext i10 %tmp_648 to i512
  %tmp_653 = zext i10 %tmp_650 to i512
  %tmp_654 = shl i512 %loc_V_7, %tmp_651
  %tmp_655 = call i512 @llvm.part.select.i512(i512 %tmp_654, i32 511, i32 0)
  %tmp_656 = select i1 %tmp_644, i512 %tmp_655, i512 %tmp_654
  %tmp_657 = shl i512 -1, %tmp_652
  %tmp_658 = lshr i512 -1, %tmp_653
  %p_demorgan9 = and i512 %tmp_657, %tmp_658
  %tmp_659 = xor i512 %p_demorgan9, -1
  %tmp_660 = and i512 %p_Result_70, %tmp_659
  %tmp_661 = and i512 %tmp_656, %p_demorgan9
  %p_Result_71 = or i512 %tmp_660, %tmp_661
  br i1 %memWr_replaceLocation_V_flag_3, label %16, label %17

; <label>:16                                      ; preds = %._crit_edge2587
  %tmp_327 = or i9 %r_V_4, 88
  %tmp_407_cast = zext i9 %tmp_327 to i10
  %Hi_assign_8 = add i10 -1, %tmp_407_cast
  %Hi_assign_19_cast = sext i10 %Hi_assign_8 to i32
  %tmp_663 = icmp ugt i32 %Lo_assign_14_cast, %Hi_assign_19_cast
  %tmp_664 = zext i9 %Lo_assign_6 to i10
  %tmp_665 = call i512 @llvm.part.select.i512(i512 %p_Result_71, i32 511, i32 0)
  %tmp_666 = sub i10 %tmp_664, %Hi_assign_8
  %tmp_667 = xor i10 %tmp_664, 511
  %tmp_668 = sub i10 %Hi_assign_8, %tmp_664
  %tmp_669 = select i1 %tmp_663, i10 %tmp_666, i10 %tmp_668
  %tmp_670 = select i1 %tmp_663, i512 %tmp_665, i512 %p_Result_71
  %tmp_671 = select i1 %tmp_663, i10 %tmp_667, i10 %tmp_664
  %tmp_672 = sub i10 511, %tmp_669
  %tmp_673 = zext i10 %tmp_671 to i512
  %tmp_674 = zext i10 %tmp_672 to i512
  %tmp_675 = lshr i512 %tmp_670, %tmp_673
  %tmp_676 = lshr i512 -1, %tmp_674
  %p_Result_72 = and i512 %tmp_675, %tmp_676
  %addressPointer_V = trunc i512 %p_Result_72 to i32
  br label %20

; <label>:17                                      ; preds = %._crit_edge2587
  br i1 %icmp, label %18, label %19

; <label>:18                                      ; preds = %17
  %tmp_V_108 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %addressAssignDramIn_V_V)
  br label %20

; <label>:19                                      ; preds = %17
  %tmp_V_109 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %addressAssignFlashIn_V_V)
  br label %20

; <label>:20                                      ; preds = %19, %18, %16
  %outputWord_address_V_1 = phi i32 [ %addressPointer_V, %16 ], [ %tmp_V_108, %18 ], [ %tmp_V_109, %19 ]
  %tmp_328 = or i9 %r_V_4, 88
  %tmp_398_cast = zext i9 %tmp_328 to i10
  %Hi_assign_9 = add i10 %tmp_398_cast, -1
  %Hi_assign_20_cast = sext i10 %Hi_assign_9 to i32
  %loc_V_8 = zext i32 %outputWord_address_V_1 to i512
  %tmp_679 = icmp ugt i32 %Lo_assign_14_cast, %Hi_assign_20_cast
  %tmp_680 = zext i9 %Lo_assign_6 to i10
  %tmp_681 = xor i10 %tmp_680, 511
  %tmp_682 = select i1 %tmp_679, i10 %tmp_680, i10 %Hi_assign_9
  %tmp_683 = select i1 %tmp_679, i10 %Hi_assign_9, i10 %tmp_680
  %tmp_684 = select i1 %tmp_679, i10 %tmp_681, i10 %tmp_680
  %tmp_685 = sub i10 511, %tmp_682
  %tmp_686 = zext i10 %tmp_684 to i512
  %tmp_687 = zext i10 %tmp_683 to i512
  %tmp_688 = zext i10 %tmp_685 to i512
  %tmp_689 = shl i512 %loc_V_8, %tmp_686
  %tmp_690 = call i512 @llvm.part.select.i512(i512 %tmp_689, i32 511, i32 0)
  %tmp_691 = select i1 %tmp_679, i512 %tmp_690, i512 %tmp_689
  %tmp_692 = shl i512 -1, %tmp_687
  %tmp_693 = lshr i512 -1, %tmp_688
  %p_demorgan1 = and i512 %tmp_692, %tmp_693
  %tmp_694 = xor i512 %p_demorgan1, -1
  %tmp_695 = and i512 %p_Result_71, %tmp_694
  %tmp_696 = and i512 %tmp_691, %p_demorgan1
  %p_Result_73 = or i512 %tmp_695, %tmp_696
  call void @_ssdm_op_Write.axis.volatile.i512P(i512* %memWrData_V_V, i512 %p_Result_73)
  %tmp_5 = call i57 @_ssdm_op_BitConcatenate.i57.i25.i32(i25 65536, i32 %outputWord_address_V_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i57P(i57* @memWr2out_V, i57 %tmp_5)
  store i3 2, i3* @memWrState, align 1
  br label %._crit_edge2586

; <label>:21                                      ; preds = %12
  %tmp_323 = icmp eq i8 %outputWord_operation_V, 4
  br i1 %tmp_323, label %.preheader.0, label %._crit_edge2586

.preheader.0:                                     ; preds = %21
  %memWr_location_V_flag_s = or i1 %htMemWriteInputStatusWord_bin_29, %htMemWriteInputStatusWord_bin_27
  %memWr_location_V_new_cast = zext i1 %htMemWriteInputStatusWord_bin_29 to i2
  %memWr_location_V_loc_s = select i1 %memWr_location_V_flag_s, i2 %memWr_location_V_new_cast, i2 %memWr_location_V_load
  %p_memWr_location_V_new_s = select i1 %htMemWriteInputStatusWord_bin_31, i2 -2, i2 %memWr_location_V_new_cast
  %tmp8 = or i1 %memWr_location_V_flag_s, %htMemWriteInputStatusWord_bin_8
  %brmerge2 = or i1 %tmp8, %htMemWriteInputStatusWord_bin_31
  %p_mux4 = select i1 %htMemWriteInputStatusWord_bin_8, i2 -1, i2 %p_memWr_location_V_new_s
  %p_memWr_location_V_loc_s = select i1 %htMemWriteInputStatusWord_bin_8, i2 -1, i2 -2
  %tmp_94 = or i1 %htMemWriteInputStatusWord_bin_8, %htMemWriteInputStatusWord_bin_31
  %p_mux5 = select i1 %tmp_94, i2 %p_memWr_location_V_loc_s, i2 %memWr_location_V_loc_s
  br i1 %brmerge2, label %.critedge26, label %22

; <label>:22                                      ; preds = %.preheader.0
  call void @_ssdm_op_Write.ap_fifo.volatile.i57P(i57* @memWr2out_V, i57 -70931694131085312)
  br label %23

.critedge26:                                      ; preds = %.preheader.0
  %tmp_565 = trunc i32 %tempAddress_V to i7
  %tmp_7 = call i40 @_ssdm_op_BitConcatenate.i40.i30.i7.i3(i30 4194304, i7 %tmp_565, i3 0)
  call void @_ssdm_op_Write.axis.volatile.i40P(i40* %memWrCtrl_V, i40 %tmp_7)
  %r_V_2 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %p_mux5, i7 0)
  %Lo_assign_1 = zext i9 %r_V_2 to i32
  %tmp_324 = or i9 %r_V_2, 87
  %tmp_392_cast = zext i9 %tmp_324 to i10
  %Hi_assign_2 = add i10 %tmp_392_cast, -1
  %Hi_assign_21_cast = sext i10 %Hi_assign_2 to i32
  %Lo_assign_2 = or i9 %r_V_2, 56
  %Lo_assign_15_cast1 = zext i9 %Lo_assign_2 to i10
  %Lo_assign_15_cast = zext i9 %Lo_assign_2 to i32
  %tmp_566 = icmp ugt i32 %Lo_assign_15_cast, %Hi_assign_21_cast
  %tmp_567 = zext i9 %Lo_assign_2 to i10
  %tmp_568 = call i512 @llvm.part.select.i512(i512 %tmp_V_107, i32 511, i32 0)
  %tmp_569 = sub i10 %tmp_567, %Hi_assign_2
  %tmp_570 = xor i10 %tmp_567, 511
  %tmp_571 = sub i10 %Hi_assign_2, %tmp_567
  %tmp_572 = select i1 %tmp_566, i10 %tmp_569, i10 %tmp_571
  %tmp_573 = select i1 %tmp_566, i512 %tmp_568, i512 %tmp_V_107
  %tmp_574 = select i1 %tmp_566, i10 %tmp_570, i10 %tmp_567
  %tmp_575 = sub i10 511, %tmp_572
  %tmp_576 = zext i10 %tmp_574 to i512
  %tmp_577 = zext i10 %tmp_575 to i512
  %tmp_578 = lshr i512 %tmp_573, %tmp_576
  %tmp_579 = lshr i512 -1, %tmp_577
  %p_Result_74 = and i512 %tmp_578, %tmp_579
  %tmp_V_102 = trunc i512 %p_Result_74 to i32
  call void @_ssdm_op_Write.axis.volatile.i32P(i32* %addressReturnOut_V_V, i32 %tmp_V_102)
  call void @_ssdm_op_Write.ap_fifo.volatile.i57P(i57* @memWr2out_V, i57 1125899906842624)
  %tmp_325 = or i9 %r_V_2, 8
  %tmp_394_cast = zext i9 %tmp_325 to i10
  %Hi_assign_3 = add i10 %tmp_394_cast, -1
  %Hi_assign_22_cast = sext i10 %Hi_assign_3 to i32
  %tmp_582 = icmp ugt i32 %Lo_assign_1, %Hi_assign_22_cast
  %tmp_583 = zext i9 %r_V_2 to i10
  %tmp_584 = select i1 %tmp_582, i10 %tmp_583, i10 %Hi_assign_3
  %tmp_585 = select i1 %tmp_582, i10 %Hi_assign_3, i10 %tmp_583
  %tmp_586 = sub i10 511, %tmp_584
  %tmp_587 = zext i10 %tmp_585 to i512
  %tmp_588 = zext i10 %tmp_586 to i512
  %tmp_589 = shl i512 -1, %tmp_587
  %tmp_590 = lshr i512 -1, %tmp_588
  %p_demorgan5 = and i512 %tmp_589, %tmp_590
  %tmp_591 = xor i512 %p_demorgan5, -1
  %p_Result_75 = and i512 %tmp_V_107, %tmp_591
  %Hi_assign_4 = add i10 %Lo_assign_15_cast1, -1
  %Hi_assign_23_cast = sext i10 %Hi_assign_4 to i32
  %Lo_assign_3 = or i9 %r_V_2, 40
  %Lo_assign_17_cast = zext i9 %Lo_assign_3 to i32
  %tmp_593 = icmp ugt i32 %Lo_assign_17_cast, %Hi_assign_23_cast
  %tmp_594 = zext i9 %Lo_assign_3 to i10
  %tmp_595 = select i1 %tmp_593, i10 %tmp_594, i10 %Hi_assign_4
  %tmp_596 = select i1 %tmp_593, i10 %Hi_assign_4, i10 %tmp_594
  %tmp_597 = sub i10 511, %tmp_595
  %tmp_598 = zext i10 %tmp_596 to i512
  %tmp_599 = zext i10 %tmp_597 to i512
  %tmp_600 = shl i512 -1, %tmp_598
  %tmp_601 = lshr i512 -1, %tmp_599
  %p_demorgan6 = and i512 %tmp_600, %tmp_601
  %tmp_602 = xor i512 %p_demorgan6, -1
  %p_Result_76 = and i512 %p_Result_75, %tmp_602
  call void @_ssdm_op_Write.axis.volatile.i512P(i512* %memWrData_V_V, i512 %p_Result_76)
  br label %23

; <label>:23                                      ; preds = %.critedge26, %22
  %memWr_location_V_flag_2 = phi i1 [ true, %.critedge26 ], [ false, %22 ]
  %memWr_location_V_new_s = phi i2 [ %p_mux4, %.critedge26 ], [ %p_memWr_location_V_new_s, %22 ]
  store i3 3, i3* @memWrState, align 1
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* @dec2cc_V_V, i1 true)
  br label %._crit_edge2586

._crit_edge2586:                                  ; preds = %23, %21, %20, %._crit_edge2583, %._crit_edge2579, %11
  %memWr_location_V_flag_3 = phi i1 [ %memWr_location_V_flag_4, %11 ], [ %memWr_location_V_flag_8, %._crit_edge2579 ], [ true, %20 ], [ %memWr_location_V_flag_8, %._crit_edge2583 ], [ %memWr_location_V_flag_2, %23 ], [ false, %21 ]
  %memWr_location_V_new_2 = phi i2 [ %memWr_location_V_new_4, %11 ], [ %memWr_location_V_new_8, %._crit_edge2579 ], [ %sel_SEBB, %20 ], [ %memWr_location_V_new_8, %._crit_edge2583 ], [ %memWr_location_V_new_s, %23 ], [ undef, %21 ]
  br i1 %memWr_location_V_flag_3, label %mergeST41, label %.new

._crit_edge2573:                                  ; preds = %.new, %8
  br label %._crit_edge2569

; <label>:24                                      ; preds = %._crit_edge
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @comp2memWrKey_V, i32 1)
  br i1 %tmp, label %25, label %._crit_edge2590

; <label>:25                                      ; preds = %24
  %tmp_68 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i512P(i512* @comp2memWrMemData_V_V, i32 1)
  br i1 %tmp_68, label %26, label %._crit_edge2590

; <label>:26                                      ; preds = %25
  %tmp_V_110 = call i512 @_ssdm_op_Read.ap_fifo.volatile.i512P(i512* @comp2memWrMemData_V_V)
  %tmp_9 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @comp2memWrKey_V)
  %tmp_500 = trunc i130 %tmp_9 to i128
  %tmp_501 = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_9, i32 129)
  %r_V = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 %memWr_location_V_load, i7 0)
  %Hi_assign_s = or i9 %r_V, 127
  %loc_V_9 = zext i128 %tmp_500 to i512
  %tmp_502 = icmp ugt i9 %r_V, %Hi_assign_s
  %tmp_503 = zext i9 %r_V to i10
  %tmp_504 = zext i9 %Hi_assign_s to i10
  %tmp_505 = xor i10 %tmp_503, 511
  %tmp_506 = select i1 %tmp_502, i10 %tmp_503, i10 %tmp_504
  %tmp_507 = select i1 %tmp_502, i10 %tmp_504, i10 %tmp_503
  %tmp_508 = select i1 %tmp_502, i10 %tmp_505, i10 %tmp_503
  %tmp_509 = xor i10 %tmp_506, 511
  %tmp_510 = zext i10 %tmp_508 to i512
  %tmp_511 = zext i10 %tmp_507 to i512
  %tmp_512 = zext i10 %tmp_509 to i512
  %tmp_513 = shl i512 %loc_V_9, %tmp_510
  %tmp_514 = call i512 @llvm.part.select.i512(i512 %tmp_513, i32 511, i32 0)
  %tmp_515 = select i1 %tmp_502, i512 %tmp_514, i512 %tmp_513
  %tmp_516 = shl i512 -1, %tmp_511
  %tmp_517 = lshr i512 -1, %tmp_512
  %p_demorgan = and i512 %tmp_516, %tmp_517
  %tmp_518 = xor i512 %p_demorgan, -1
  %tmp_519 = and i512 %tmp_V_110, %tmp_518
  %tmp_520 = and i512 %tmp_515, %p_demorgan
  %p_Result_77 = or i512 %tmp_519, %tmp_520
  call void @_ssdm_op_Write.axis.volatile.i512P(i512* %memWrData_V_V, i512 %p_Result_77)
  br i1 %tmp_501, label %27, label %._crit_edge2592

; <label>:27                                      ; preds = %26
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* @dec2cc_V_V, i1 true)
  store i3 0, i3* @memWrState, align 1
  br label %._crit_edge2592

._crit_edge2592:                                  ; preds = %27, %26
  br label %._crit_edge2590

._crit_edge2590:                                  ; preds = %._crit_edge2592, %25, %24
  br label %._crit_edge2569

; <label>:28                                      ; preds = %._crit_edge
  br i1 %flushAck_V_read, label %29, label %._crit_edge2593

; <label>:29                                      ; preds = %28
  store i3 -3, i3* @memWrState, align 1
  br label %._crit_edge2593

._crit_edge2593:                                  ; preds = %29, %28
  br label %._crit_edge2569

; <label>:30                                      ; preds = %._crit_edge
  %flushWord_address_V = zext i10 %memWriteAddress_V_load to i32
  %tmp_316 = add i10 %memWriteAddress_V_load, 1
  store i10 %tmp_316, i10* @memWriteAddress_V, align 2
  %tmp_10 = call i40 @_ssdm_op_BitConcatenate.i40.i8.i32(i8 1, i32 %flushWord_address_V)
  call void @_ssdm_op_Write.axis.volatile.i40P(i40* %memWrCtrl_V, i40 %tmp_10)
  call void @_ssdm_op_Write.axis.volatile.i512P(i512* %memWrData_V_V, i512 0)
  %tmp_317 = icmp eq i10 %tmp_316, -1
  br i1 %tmp_317, label %31, label %._crit_edge2594

; <label>:31                                      ; preds = %30
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* @dec2cc_V_V, i1 true)
  store i1 true, i1* @memWr_flushDone_V, align 1
  store i1 false, i1* @memWr_flushReq_V, align 1
  %tmp_112 = call i56 @_ssdm_op_BitConcatenate.i56.i8.i48(i8 %outputWord_operation_V, i48 0)
  %tmp_11 = call i57 @_ssdm_op_PartSet.i57.i57.i56.i32.i32(i57 undef, i56 %tmp_112, i32 0, i32 55)
  call void @_ssdm_op_Write.ap_fifo.volatile.i57P(i57* @memWr2out_V, i57 %tmp_11)
  store i3 -2, i3* @memWrState, align 1
  br label %._crit_edge2594

._crit_edge2594:                                  ; preds = %31, %30
  br label %._crit_edge2569

; <label>:32                                      ; preds = %._crit_edge
  %tmp_84 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @comp2memWrKey_V, i32 1)
  br i1 %tmp_84, label %33, label %._crit_edge2595

; <label>:33                                      ; preds = %32
  %tmp_12_0 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @comp2memWrKey_V)
  store i3 0, i3* @memWrState, align 1
  br label %._crit_edge2595

._crit_edge2595:                                  ; preds = %33, %32
  br label %._crit_edge2569

; <label>:34                                      ; preds = %._crit_edge
  %tmp_85 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130* @comp2memWrKey_V, i32 1)
  br i1 %tmp_85, label %35, label %._crit_edge2596

; <label>:35                                      ; preds = %34
  %tmp_69 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i512P(i512* @comp2memWrMemData_V_V, i32 1)
  br i1 %tmp_69, label %36, label %._crit_edge2596

; <label>:36                                      ; preds = %35
  %tmp_13 = call i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130* @comp2memWrKey_V)
  %tmp_522 = call i1 @_ssdm_op_BitSelect.i1.i130.i32(i130 %tmp_13, i32 129)
  %tmp_V_138_0 = call i512 @_ssdm_op_Read.ap_fifo.volatile.i512P(i512* @comp2memWrMemData_V_V)
  br i1 %tmp_522, label %37, label %._crit_edge2598

; <label>:37                                      ; preds = %36
  store i3 0, i3* @memWrState, align 1
  br label %._crit_edge2598

._crit_edge2598:                                  ; preds = %37, %36
  br label %._crit_edge2596

._crit_edge2596:                                  ; preds = %._crit_edge2598, %35, %34
  br label %._crit_edge2569

; <label>:38                                      ; preds = %._crit_edge
  %flushWord_address_V_1 = zext i10 %memWriteAddress_V_load to i32
  %tmp_318 = add i10 %memWriteAddress_V_load, 1
  store i10 %tmp_318, i10* @memWriteAddress_V, align 2
  %tmp_14 = call i40 @_ssdm_op_BitConcatenate.i40.i8.i32(i8 1, i32 %flushWord_address_V_1)
  call void @_ssdm_op_Write.axis.volatile.i40P(i40* %memWrCtrl_V, i40 %tmp_14)
  call void @_ssdm_op_Write.axis.volatile.i512P(i512* %memWrData_V_V, i512 0)
  %tmp_319 = icmp eq i10 %tmp_318, -1
  br i1 %tmp_319, label %39, label %._crit_edge2599

; <label>:39                                      ; preds = %38
  store i3 0, i3* @memWrState, align 1
  br label %._crit_edge2599

._crit_edge2599:                                  ; preds = %39, %38
  br label %._crit_edge2569

._crit_edge2569:                                  ; preds = %._crit_edge2599, %._crit_edge2596, %._crit_edge2595, %._crit_edge2594, %._crit_edge2593, %._crit_edge2590, %._crit_edge2573, %7, %6, %3, %2, %._crit_edge
  %htMemWriteInputStatusWord_bin_9 = phi i1 [ %htMemWriteInputStatusWord_bin_25, %._crit_edge ], [ %htMemWriteInputStatusWord_bin_25, %._crit_edge2599 ], [ %htMemWriteInputStatusWord_bin_25, %._crit_edge2596 ], [ %htMemWriteInputStatusWord_bin_25, %._crit_edge2595 ], [ %htMemWriteInputStatusWord_bin_25, %._crit_edge2594 ], [ %htMemWriteInputStatusWord_bin_25, %._crit_edge2593 ], [ %htMemWriteInputStatusWord_bin_25, %._crit_edge2590 ], [ %htMemWriteInputStatusWord_bin_25, %._crit_edge2573 ], [ %htMemWriteInputStatusWord_bin_25, %7 ], [ true, %6 ], [ %htMemWriteInputStatusWord_bin_25, %3 ], [ %htMemWriteInputStatusWord_bin_25, %2 ]
  %htMemWriteInputStatusWord_bin_10 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge2599 ], [ false, %._crit_edge2596 ], [ false, %._crit_edge2595 ], [ false, %._crit_edge2594 ], [ false, %._crit_edge2593 ], [ false, %._crit_edge2590 ], [ false, %._crit_edge2573 ], [ false, %7 ], [ %tmp_523, %6 ], [ false, %3 ], [ false, %2 ]
  %htMemWriteInputStatusWord_bin_11 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge2599 ], [ false, %._crit_edge2596 ], [ false, %._crit_edge2595 ], [ false, %._crit_edge2594 ], [ false, %._crit_edge2593 ], [ false, %._crit_edge2590 ], [ false, %._crit_edge2573 ], [ false, %7 ], [ %tmp_524, %6 ], [ false, %3 ], [ false, %2 ]
  %htMemWriteInputStatusWord_bin_12 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge2599 ], [ false, %._crit_edge2596 ], [ false, %._crit_edge2595 ], [ false, %._crit_edge2594 ], [ false, %._crit_edge2593 ], [ false, %._crit_edge2590 ], [ false, %._crit_edge2573 ], [ false, %7 ], [ %tmp_525, %6 ], [ false, %3 ], [ false, %2 ]
  %htMemWriteInputStatusWord_bin_13 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge2599 ], [ false, %._crit_edge2596 ], [ false, %._crit_edge2595 ], [ false, %._crit_edge2594 ], [ false, %._crit_edge2593 ], [ false, %._crit_edge2590 ], [ false, %._crit_edge2573 ], [ false, %7 ], [ %tmp_526, %6 ], [ false, %3 ], [ false, %2 ]
  %htMemWriteInputStatusWord_bin_14 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge2599 ], [ false, %._crit_edge2596 ], [ false, %._crit_edge2595 ], [ false, %._crit_edge2594 ], [ false, %._crit_edge2593 ], [ false, %._crit_edge2590 ], [ false, %._crit_edge2573 ], [ false, %7 ], [ %tmp_527, %6 ], [ false, %3 ], [ false, %2 ]
  %htMemWriteInputStatusWord_bin_15 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge2599 ], [ false, %._crit_edge2596 ], [ false, %._crit_edge2595 ], [ false, %._crit_edge2594 ], [ false, %._crit_edge2593 ], [ false, %._crit_edge2590 ], [ false, %._crit_edge2573 ], [ false, %7 ], [ %tmp_528, %6 ], [ false, %3 ], [ false, %2 ]
  %htMemWriteInputStatusWord_bin_16 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge2599 ], [ false, %._crit_edge2596 ], [ false, %._crit_edge2595 ], [ false, %._crit_edge2594 ], [ false, %._crit_edge2593 ], [ false, %._crit_edge2590 ], [ false, %._crit_edge2573 ], [ false, %7 ], [ %tmp_529, %6 ], [ false, %3 ], [ false, %2 ]
  %htMemWriteInputStatusWord_bin_17 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge2599 ], [ false, %._crit_edge2596 ], [ false, %._crit_edge2595 ], [ false, %._crit_edge2594 ], [ false, %._crit_edge2593 ], [ false, %._crit_edge2590 ], [ false, %._crit_edge2573 ], [ false, %7 ], [ %tmp_530, %6 ], [ false, %3 ], [ false, %2 ]
  %memWr_flushReq_V_load = load i1* @memWr_flushReq_V, align 1
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %flushReq_V, i1 %memWr_flushReq_V_load)
  %memWr_flushDone_V_load = load i1* @memWr_flushDone_V, align 1
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %flushDone_V, i1 %memWr_flushDone_V_load)
  br i1 %htMemWriteInputStatusWord_bin_9, label %mergeST39, label %._crit_edge2569.new

._crit_edge2569.new:                              ; preds = %mergeST39, %._crit_edge2569
  ret void

mergeST39:                                        ; preds = %._crit_edge2569
  store i1 %htMemWriteInputStatusWord_bin_17, i1* @htMemWriteInputStatusWord_bin_7, align 1
  store i1 %htMemWriteInputStatusWord_bin_16, i1* @htMemWriteInputStatusWord_bin_3, align 1
  store i1 %htMemWriteInputStatusWord_bin_15, i1* @htMemWriteInputStatusWord_bin_6, align 1
  store i1 %htMemWriteInputStatusWord_bin_14, i1* @htMemWriteInputStatusWord_bin_2, align 1
  store i1 %htMemWriteInputStatusWord_bin_13, i1* @htMemWriteInputStatusWord_bin_5, align 1
  store i1 %htMemWriteInputStatusWord_bin_12, i1* @htMemWriteInputStatusWord_bin_1, align 1
  store i1 %htMemWriteInputStatusWord_bin_11, i1* @htMemWriteInputStatusWord_bin_4, align 1
  store i1 %htMemWriteInputStatusWord_bin_10, i1* @htMemWriteInputStatusWord_bin_s, align 1
  br label %._crit_edge2569.new

mergeST41:                                        ; preds = %._crit_edge2586
  store i2 %memWr_location_V_new_2, i2* @memWr_location_V, align 1
  br label %.new

.new:                                             ; preds = %mergeST41, %._crit_edge2586
  br label %._crit_edge2573

mergeST42:                                        ; preds = %.preheader2552.0_ifconv
  store i2 %memWr_replaceLocation_V_new_3, i2* @memWr_replaceLocation_V, align 1
  br label %.preheader2552.4.new

.preheader2552.4.new:                             ; preds = %mergeST42, %.preheader2552.0_ifconv
  br i1 %brmerge, label %13, label %._crit_edge2579
}

define weak i32 @_ssdm_op_PartSelect.i32.i256.i32.i32(i256, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_96 = trunc i256 %empty to i32
  ret i32 %empty_96
}

define weak i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i1.i124(i64, i64, i1, i1, i1, i1, i124) nounwind readnone {
entry:
  %empty = zext i1 %5 to i125
  %empty_97 = zext i124 %6 to i125
  %empty_98 = shl i125 %empty, 124
  %empty_99 = or i125 %empty_98, %empty_97
  %empty_100 = zext i1 %4 to i126
  %empty_101 = zext i125 %empty_99 to i126
  %empty_102 = shl i126 %empty_100, 125
  %empty_103 = or i126 %empty_102, %empty_101
  %empty_104 = zext i1 %3 to i127
  %empty_105 = zext i126 %empty_103 to i127
  %empty_106 = shl i127 %empty_104, 126
  %empty_107 = or i127 %empty_106, %empty_105
  %empty_108 = zext i1 %2 to i128
  %empty_109 = zext i127 %empty_107 to i128
  %empty_110 = shl i128 %empty_108, 127
  %empty_111 = or i128 %empty_110, %empty_109
  %empty_112 = zext i64 %1 to i192
  %empty_113 = zext i128 %empty_111 to i192
  %empty_114 = shl i192 %empty_112, 128
  %empty_115 = or i192 %empty_114, %empty_113
  %empty_116 = zext i64 %0 to i256
  %empty_117 = zext i192 %empty_115 to i256
  %empty_118 = shl i256 %empty_116, 192
  %empty_119 = or i256 %empty_118, %empty_117
  ret i256 %empty_119
}

define weak i64 @_ssdm_op_PartSelect.i64.i256.i32.i32(i256, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_120 = trunc i256 %empty to i64
  ret i64 %empty_120
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_121 = trunc i32 %empty to i8
  ret i8 %empty_121
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_122 = zext i8 %3 to i16
  %empty_123 = shl i16 %empty, 8
  %empty_124 = or i16 %empty_123, %empty_122
  %empty_125 = zext i8 %1 to i24
  %empty_126 = zext i16 %empty_124 to i24
  %empty_127 = shl i24 %empty_125, 16
  %empty_128 = or i24 %empty_127, %empty_126
  %empty_129 = zext i8 %0 to i32
  %empty_130 = zext i24 %empty_128 to i32
  %empty_131 = shl i32 %empty_129, 24
  %empty_132 = or i32 %empty_131, %empty_130
  ret i32 %empty_132
}

define weak i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_133 = trunc i256 %empty to i8
  ret i8 %empty_133
}

define weak i3 @_ssdm_op_PartSelect.i3.i256.i32.i32(i256, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_134 = trunc i256 %empty to i3
  ret i3 %empty_134
}

define weak i128 @_ssdm_op_BitConcatenate.i128.i3.i1.i124(i3, i1, i124) nounwind readnone {
entry:
  %empty = zext i1 %1 to i125
  %empty_135 = zext i124 %2 to i125
  %empty_136 = shl i125 %empty, 124
  %empty_137 = or i125 %empty_136, %empty_135
  %empty_138 = zext i3 %0 to i128
  %empty_139 = zext i125 %empty_137 to i128
  %empty_140 = shl i128 %empty_138, 125
  %empty_141 = or i128 %empty_140, %empty_139
  ret i128 %empty_141
}

define weak i48 @_ssdm_op_BitConcatenate.i48.i16.i32(i16, i32) nounwind readnone {
entry:
  %empty = zext i16 %0 to i48
  %empty_142 = zext i32 %1 to i48
  %empty_143 = shl i48 %empty, 32
  %empty_144 = or i48 %empty_143, %empty_142
  ret i48 %empty_144
}

define weak i16 @_ssdm_op_PartSelect.i16.i256.i32.i32(i256, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_145 = trunc i256 %empty to i16
  ret i16 %empty_145
}

define weak i66 @_ssdm_op_BitConcatenate.i66.i1.i1.i64(i1, i1, i64) nounwind readnone {
entry:
  %empty = zext i1 %1 to i65
  %empty_146 = zext i64 %2 to i65
  %empty_147 = shl i65 %empty, 64
  %empty_148 = or i65 %empty_147, %empty_146
  %empty_149 = zext i1 %0 to i66
  %empty_150 = zext i65 %empty_148 to i66
  %empty_151 = shl i66 %empty_149, 65
  %empty_152 = or i66 %empty_151, %empty_150
  ret i66 %empty_152
}

define weak i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_153 = trunc i128 %empty to i8
  ret i8 %empty_153
}

define weak i8 @_ssdm_op_PartSelect.i8.i124.i32.i32(i124, i32, i32) nounwind readnone {
entry:
  %empty = call i124 @llvm.part.select.i124(i124 %0, i32 %1, i32 %2)
  %empty_154 = trunc i124 %empty to i8
  ret i8 %empty_154
}

define weak i256 @_ssdm_op_BitConcatenate.i256.i64.i68.i124(i64, i68, i124) nounwind readnone {
entry:
  %empty = zext i68 %1 to i192
  %empty_155 = zext i124 %2 to i192
  %empty_156 = shl i192 %empty, 124
  %empty_157 = or i192 %empty_156, %empty_155
  %empty_158 = zext i64 %0 to i256
  %empty_159 = zext i192 %empty_157 to i256
  %empty_160 = shl i256 %empty_158, 192
  %empty_161 = or i256 %empty_160, %empty_159
  ret i256 %empty_161
}

define weak i256 @_ssdm_op_BitConcatenate.i256.i132.i124(i132, i124) nounwind readnone {
entry:
  %empty = zext i132 %0 to i256
  %empty_162 = zext i124 %1 to i256
  %empty_163 = shl i256 %empty, 124
  %empty_164 = or i256 %empty_163, %empty_162
  ret i256 %empty_164
}

define weak i16 @_ssdm_op_PartSelect.i16.i124.i32.i32(i124, i32, i32) nounwind readnone {
entry:
  %empty = call i124 @llvm.part.select.i124(i124 %0, i32 %1, i32 %2)
  %empty_165 = trunc i124 %empty to i16
  ret i16 %empty_165
}

define weak i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i2.i1.i1.i124(i64, i64, i2, i1, i1, i124) nounwind readnone {
entry:
  %empty = zext i1 %4 to i125
  %empty_166 = zext i124 %5 to i125
  %empty_167 = shl i125 %empty, 124
  %empty_168 = or i125 %empty_167, %empty_166
  %empty_169 = zext i1 %3 to i126
  %empty_170 = zext i125 %empty_168 to i126
  %empty_171 = shl i126 %empty_169, 125
  %empty_172 = or i126 %empty_171, %empty_170
  %empty_173 = zext i2 %2 to i128
  %empty_174 = zext i126 %empty_172 to i128
  %empty_175 = shl i128 %empty_173, 126
  %empty_176 = or i128 %empty_175, %empty_174
  %empty_177 = zext i64 %1 to i192
  %empty_178 = zext i128 %empty_176 to i192
  %empty_179 = shl i192 %empty_177, 128
  %empty_180 = or i192 %empty_179, %empty_178
  %empty_181 = zext i64 %0 to i256
  %empty_182 = zext i192 %empty_180 to i256
  %empty_183 = shl i256 %empty_181, 192
  %empty_184 = or i256 %empty_183, %empty_182
  ret i256 %empty_184
}

define weak i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i3.i124(i64, i64, i1, i3, i124) nounwind readnone {
entry:
  %empty = zext i3 %3 to i127
  %empty_185 = zext i124 %4 to i127
  %empty_186 = shl i127 %empty, 124
  %empty_187 = or i127 %empty_186, %empty_185
  %empty_188 = zext i1 %2 to i128
  %empty_189 = zext i127 %empty_187 to i128
  %empty_190 = shl i128 %empty_188, 127
  %empty_191 = or i128 %empty_190, %empty_189
  %empty_192 = zext i64 %1 to i192
  %empty_193 = zext i128 %empty_191 to i192
  %empty_194 = shl i192 %empty_192, 128
  %empty_195 = or i192 %empty_194, %empty_193
  %empty_196 = zext i64 %0 to i256
  %empty_197 = zext i192 %empty_195 to i256
  %empty_198 = shl i256 %empty_196, 192
  %empty_199 = or i256 %empty_198, %empty_197
  ret i256 %empty_199
}

define weak i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i127(i64, i64, i1, i127) nounwind readnone {
entry:
  %empty = zext i1 %2 to i128
  %empty_200 = zext i127 %3 to i128
  %empty_201 = shl i128 %empty, 127
  %empty_202 = or i128 %empty_201, %empty_200
  %empty_203 = zext i64 %1 to i192
  %empty_204 = zext i128 %empty_202 to i192
  %empty_205 = shl i192 %empty_203, 128
  %empty_206 = or i192 %empty_205, %empty_204
  %empty_207 = zext i64 %0 to i256
  %empty_208 = zext i192 %empty_206 to i256
  %empty_209 = shl i256 %empty_207, 192
  %empty_210 = or i256 %empty_209, %empty_208
  ret i256 %empty_210
}

define weak i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i1.i125(i64, i64, i1, i1, i1, i125) nounwind readnone {
entry:
  %empty = zext i1 %4 to i126
  %empty_211 = zext i125 %5 to i126
  %empty_212 = shl i126 %empty, 125
  %empty_213 = or i126 %empty_212, %empty_211
  %empty_214 = zext i1 %3 to i127
  %empty_215 = zext i126 %empty_213 to i127
  %empty_216 = shl i127 %empty_214, 126
  %empty_217 = or i127 %empty_216, %empty_215
  %empty_218 = zext i1 %2 to i128
  %empty_219 = zext i127 %empty_217 to i128
  %empty_220 = shl i128 %empty_218, 127
  %empty_221 = or i128 %empty_220, %empty_219
  %empty_222 = zext i64 %1 to i192
  %empty_223 = zext i128 %empty_221 to i192
  %empty_224 = shl i192 %empty_222, 128
  %empty_225 = or i192 %empty_224, %empty_223
  %empty_226 = zext i64 %0 to i256
  %empty_227 = zext i192 %empty_225 to i256
  %empty_228 = shl i256 %empty_226, 192
  %empty_229 = or i256 %empty_228, %empty_227
  ret i256 %empty_229
}

define weak i45 @_ssdm_op_BitConcatenate.i45.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = zext i13 %0 to i45
  %empty_230 = zext i32 %1 to i45
  %empty_231 = shl i45 %empty, 32
  %empty_232 = or i45 %empty_231, %empty_230
  ret i45 %empty_232
}

define weak i13 @_ssdm_op_PartSelect.i13.i256.i32.i32(i256, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_233 = trunc i256 %empty to i13
  ret i13 %empty_233
}

define weak i12 @_ssdm_op_PartSelect.i12.i256.i32.i32(i256, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.select.i256(i256 %0, i32 %1, i32 %2)
  %empty_234 = trunc i256 %empty to i12
  ret i12 %empty_234
}

define weak i13 @_ssdm_op_PartSelect.i13.i124.i32.i32(i124, i32, i32) nounwind readnone {
entry:
  %empty = call i124 @llvm.part.select.i124(i124 %0, i32 %1, i32 %2)
  %empty_235 = trunc i124 %empty to i13
  ret i13 %empty_235
}

declare i248 @llvm.part.set.i248.i124(i248, i124, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i248.i32.i32(i248, i32, i32) nounwind readnone {
entry:
  %empty = call i248 @llvm.part.select.i248(i248 %0, i32 %1, i32 %2)
  %empty_236 = trunc i248 %empty to i8
  ret i8 %empty_236
}

define weak i96 @_ssdm_op_PartSelect.i96.i248.i32.i32(i248, i32, i32) nounwind readnone {
entry:
  %empty = call i248 @llvm.part.select.i248(i248 %0, i32 %1, i32 %2)
  %empty_237 = trunc i248 %empty to i96
  ret i96 %empty_237
}

define weak i32 @_ssdm_op_PartSelect.i32.i248.i32.i32(i248, i32, i32) nounwind readnone {
entry:
  %empty = call i248 @llvm.part.select.i248(i248 %0, i32 %1, i32 %2)
  %empty_238 = trunc i248 %empty to i32
  ret i32 %empty_238
}

define weak i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_239 = trunc i64 %empty to i8
  ret i8 %empty_239
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i48.i8.i8(i48, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_240 = zext i8 %2 to i16
  %empty_241 = shl i16 %empty, 8
  %empty_242 = or i16 %empty_241, %empty_240
  %empty_243 = zext i48 %0 to i64
  %empty_244 = zext i16 %empty_242 to i64
  %empty_245 = shl i64 %empty_243, 16
  %empty_246 = or i64 %empty_245, %empty_244
  ret i64 %empty_246
}

define weak i16 @_ssdm_op_PartSelect.i16.i248.i32.i32(i248, i32, i32) nounwind readnone {
entry:
  %empty = call i248 @llvm.part.select.i248(i248 %0, i32 %1, i32 %2)
  %empty_247 = trunc i248 %empty to i16
  ret i16 %empty_247
}

define weak i112 @_ssdm_op_BitConcatenate.i112.i16.i96(i16, i96) nounwind readnone {
entry:
  %empty = zext i16 %0 to i112
  %empty_248 = zext i96 %1 to i112
  %empty_249 = shl i112 %empty, 96
  %empty_250 = or i112 %empty_249, %empty_248
  ret i112 %empty_250
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_251 = trunc i64 %empty to i32
  ret i32 %empty_251
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_252 = zext i32 %1 to i64
  %empty_253 = shl i64 %empty, 32
  %empty_254 = or i64 %empty_253, %empty_252
  ret i64 %empty_254
}

define weak i4 @_ssdm_op_PartSelect.i4.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_255 = trunc i64 %empty to i4
  ret i4 %empty_255
}

declare i248 @llvm.part.set.i248.i8(i248, i8, i32, i32) nounwind readnone

declare i248 @llvm.part.set.i248.i30(i248, i30, i32, i32) nounwind readnone

declare i248 @llvm.part.set.i248.i4(i248, i4, i32, i32) nounwind readnone

define weak i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17, i8) nounwind readnone {
entry:
  %empty = zext i17 %0 to i25
  %empty_256 = zext i8 %1 to i25
  %empty_257 = shl i25 %empty, 8
  %empty_258 = or i25 %empty_257, %empty_256
  ret i25 %empty_258
}

define weak i248 @_ssdm_op_PartSet.i248.i248.i25.i32.i32(i248, i25, i32, i32) nounwind readnone {
entry:
  %empty = call i248 @llvm.part.set.i248.i25(i248 %0, i25 %1, i32 %2, i32 %3)
  ret i248 %empty
}

define weak i124 @_ssdm_op_PartSelect.i124.i248.i32.i32(i248, i32, i32) nounwind readnone {
entry:
  %empty = call i248 @llvm.part.select.i248(i248 %0, i32 %1, i32 %2)
  %empty_259 = trunc i248 %empty to i124
  ret i124 %empty_259
}

define weak i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i1.i1.i2.i124(i64, i64, i1, i1, i2, i124) nounwind readnone {
entry:
  %empty = zext i2 %4 to i126
  %empty_260 = zext i124 %5 to i126
  %empty_261 = shl i126 %empty, 124
  %empty_262 = or i126 %empty_261, %empty_260
  %empty_263 = zext i1 %3 to i127
  %empty_264 = zext i126 %empty_262 to i127
  %empty_265 = shl i127 %empty_263, 126
  %empty_266 = or i127 %empty_265, %empty_264
  %empty_267 = zext i1 %2 to i128
  %empty_268 = zext i127 %empty_266 to i128
  %empty_269 = shl i128 %empty_267, 127
  %empty_270 = or i128 %empty_269, %empty_268
  %empty_271 = zext i64 %1 to i192
  %empty_272 = zext i128 %empty_270 to i192
  %empty_273 = shl i192 %empty_271, 128
  %empty_274 = or i192 %empty_273, %empty_272
  %empty_275 = zext i64 %0 to i256
  %empty_276 = zext i192 %empty_274 to i256
  %empty_277 = shl i256 %empty_275, 192
  %empty_278 = or i256 %empty_277, %empty_276
  ret i256 %empty_278
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i16.i8.i32.i8(i16, i8, i32, i8) nounwind readnone {
entry:
  %empty = zext i32 %2 to i40
  %empty_279 = zext i8 %3 to i40
  %empty_280 = shl i40 %empty, 8
  %empty_281 = or i40 %empty_280, %empty_279
  %empty_282 = zext i8 %1 to i48
  %empty_283 = zext i40 %empty_281 to i48
  %empty_284 = shl i48 %empty_282, 40
  %empty_285 = or i48 %empty_284, %empty_283
  %empty_286 = zext i16 %0 to i64
  %empty_287 = zext i48 %empty_285 to i64
  %empty_288 = shl i64 %empty_286, 48
  %empty_289 = or i64 %empty_288, %empty_287
  ret i64 %empty_289
}

define weak i130 @_ssdm_op_BitConcatenate.i130.i1.i1.i128(i1, i1, i128) nounwind readnone {
entry:
  %empty = zext i1 %1 to i129
  %empty_290 = zext i128 %2 to i129
  %empty_291 = shl i129 %empty, 128
  %empty_292 = or i129 %empty_291, %empty_290
  %empty_293 = zext i1 %0 to i130
  %empty_294 = zext i129 %empty_292 to i130
  %empty_295 = shl i130 %empty_293, 129
  %empty_296 = or i130 %empty_295, %empty_294
  ret i130 %empty_296
}

define weak i130 @_ssdm_op_BitConcatenate.i130.i2.i128(i2, i128) nounwind readnone {
entry:
  %empty = zext i2 %0 to i130
  %empty_297 = zext i128 %1 to i130
  %empty_298 = shl i130 %empty, 128
  %empty_299 = or i130 %empty_298, %empty_297
  ret i130 %empty_299
}

define weak i8 @_ssdm_op_PartSelect.i8.i57.i32.i32(i57, i32, i32) nounwind readnone {
entry:
  %empty = call i57 @llvm.part.select.i57(i57 %0, i32 %1, i32 %2)
  %empty_300 = trunc i57 %empty to i8
  ret i8 %empty_300
}

define weak i16 @_ssdm_op_PartSelect.i16.i57.i32.i32(i57, i32, i32) nounwind readnone {
entry:
  %empty = call i57 @llvm.part.select.i57(i57 %0, i32 %1, i32 %2)
  %empty_301 = trunc i57 %empty to i16
  ret i16 %empty_301
}

declare i128 @llvm.part.set.i128.i16(i128, i16, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_302 = trunc i128 %empty to i16
  ret i16 %empty_302
}

define weak i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96, i32, i32) nounwind readnone {
entry:
  %empty = call i96 @llvm.part.select.i96(i96 %0, i32 %1, i32 %2)
  %empty_303 = trunc i96 %empty to i32
  ret i32 %empty_303
}

define weak i96 @_ssdm_op_PartSelect.i96.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_304 = trunc i128 %empty to i96
  ret i96 %empty_304
}

define weak i64 @_ssdm_op_PartSelect.i64.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_305 = trunc i128 %empty to i64
  ret i64 %empty_305
}

define weak i32 @_ssdm_op_PartSelect.i32.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_306 = trunc i128 %empty to i32
  ret i32 %empty_306
}

define weak i96 @_ssdm_op_BitConcatenate.i96.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i64 %0 to i96
  %empty_307 = zext i32 %1 to i96
  %empty_308 = shl i96 %empty, 32
  %empty_309 = or i96 %empty_308, %empty_307
  ret i96 %empty_309
}

define weak i96 @_ssdm_op_BitConcatenate.i96.i32.i64(i32, i64) nounwind readnone {
entry:
  %empty = zext i32 %0 to i96
  %empty_310 = zext i64 %1 to i96
  %empty_311 = shl i96 %empty, 64
  %empty_312 = or i96 %empty_311, %empty_310
  ret i96 %empty_312
}

define weak i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_313 = trunc i64 %empty to i16
  ret i16 %empty_313
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i1.i1.i1.i1.i1.i1.i1.i1(i1, i1, i1, i1, i1, i1, i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %6 to i2
  %empty_314 = zext i1 %7 to i2
  %empty_315 = shl i2 %empty, 1
  %empty_316 = or i2 %empty_315, %empty_314
  %empty_317 = zext i1 %5 to i3
  %empty_318 = zext i2 %empty_316 to i3
  %empty_319 = shl i3 %empty_317, 2
  %empty_320 = or i3 %empty_319, %empty_318
  %empty_321 = zext i1 %4 to i4
  %empty_322 = zext i3 %empty_320 to i4
  %empty_323 = shl i4 %empty_321, 3
  %empty_324 = or i4 %empty_323, %empty_322
  %empty_325 = zext i1 %3 to i5
  %empty_326 = zext i4 %empty_324 to i5
  %empty_327 = shl i5 %empty_325, 4
  %empty_328 = or i5 %empty_327, %empty_326
  %empty_329 = zext i1 %2 to i6
  %empty_330 = zext i5 %empty_328 to i6
  %empty_331 = shl i6 %empty_329, 5
  %empty_332 = or i6 %empty_331, %empty_330
  %empty_333 = zext i1 %1 to i7
  %empty_334 = zext i6 %empty_332 to i7
  %empty_335 = shl i7 %empty_333, 6
  %empty_336 = or i7 %empty_335, %empty_334
  %empty_337 = zext i1 %0 to i8
  %empty_338 = zext i7 %empty_336 to i8
  %empty_339 = shl i8 %empty_337, 7
  %empty_340 = or i8 %empty_339, %empty_338
  ret i8 %empty_340
}

define weak i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_341 = trunc i32 %empty to i6
  ret i6 %empty_341
}

define weak i12 @_ssdm_op_PartSelect.i12.i45.i32.i32(i45, i32, i32) nounwind readnone {
entry:
  %empty = call i45 @llvm.part.select.i45(i45 %0, i32 %1, i32 %2)
  %empty_342 = trunc i45 %empty to i12
  ret i12 %empty_342
}

define weak i40 @_ssdm_op_BitConcatenate.i40.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = zext i8 %0 to i40
  %empty_343 = zext i32 %1 to i40
  %empty_344 = shl i40 %empty, 32
  %empty_345 = or i40 %empty_344, %empty_343
  ret i40 %empty_345
}

define weak i13 @_ssdm_op_PartSelect.i13.i45.i32.i32(i45, i32, i32) nounwind readnone {
entry:
  %empty = call i45 @llvm.part.select.i45(i45 %0, i32 %1, i32 %2)
  %empty_346 = trunc i45 %empty to i13
  ret i13 %empty_346
}

define weak i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48, i32, i32) nounwind readnone {
entry:
  %empty = call i48 @llvm.part.select.i48(i48 %0, i32 %1, i32 %2)
  %empty_347 = trunc i48 %empty to i16
  ret i16 %empty_347
}

define weak i7 @_ssdm_op_PartSelect.i7.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_348 = trunc i64 %empty to i7
  ret i7 %empty_348
}

define weak i2 @_ssdm_op_PartSelect.i2.i130.i32.i32(i130, i32, i32) nounwind readnone {
entry:
  %empty = call i130 @llvm.part.select.i130(i130 %0, i32 %1, i32 %2)
  %empty_349 = trunc i130 %empty to i2
  ret i2 %empty_349
}

define weak i57 @_ssdm_op_BitConcatenate.i57.i9.i16.i32(i9, i16, i32) nounwind readnone {
entry:
  %empty = zext i16 %1 to i48
  %empty_350 = zext i32 %2 to i48
  %empty_351 = shl i48 %empty, 32
  %empty_352 = or i48 %empty_351, %empty_350
  %empty_353 = zext i9 %0 to i57
  %empty_354 = zext i48 %empty_352 to i57
  %empty_355 = shl i57 %empty_353, 48
  %empty_356 = or i57 %empty_355, %empty_354
  ret i57 %empty_356
}

define weak i57 @_ssdm_op_BitConcatenate.i57.i25.i32(i25, i32) nounwind readnone {
entry:
  %empty = zext i25 %0 to i57
  %empty_357 = zext i32 %1 to i57
  %empty_358 = shl i57 %empty, 32
  %empty_359 = or i57 %empty_358, %empty_357
  ret i57 %empty_359
}

define weak i40 @_ssdm_op_BitConcatenate.i40.i30.i7.i3(i30, i7, i3) nounwind readnone {
entry:
  %empty = zext i7 %1 to i10
  %empty_360 = zext i3 %2 to i10
  %empty_361 = shl i10 %empty, 3
  %empty_362 = or i10 %empty_361, %empty_360
  %empty_363 = zext i30 %0 to i40
  %empty_364 = zext i10 %empty_362 to i40
  %empty_365 = shl i40 %empty_363, 10
  %empty_366 = or i40 %empty_365, %empty_364
  ret i40 %empty_366
}

define weak i57 @_ssdm_op_PartSet.i57.i57.i56.i32.i32(i57, i56, i32, i32) nounwind readnone {
entry:
  %empty = call i57 @llvm.part.set.i57.i56(i57 %0, i56 %1, i32 %2, i32 %3)
  ret i57 %empty
}

define weak i56 @_ssdm_op_BitConcatenate.i56.i8.i48(i8, i48) nounwind readnone {
entry:
  %empty = zext i8 %0 to i56
  %empty_367 = zext i48 %1 to i56
  %empty_368 = shl i56 %empty, 48
  %empty_369 = or i56 %empty_368, %empty_367
  ret i56 %empty_369
}

define weak i15 @_ssdm_op_PartSelect.i15.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_370 = trunc i128 %empty to i15
  ret i15 %empty_370
}

define weak i256 @_ssdm_op_BitConcatenate.i256.i64.i64.i15.i1.i8.i32.i72(i64, i64, i15, i1, i8, i32, i72) nounwind readnone {
entry:
  %empty = zext i32 %5 to i104
  %empty_371 = zext i72 %6 to i104
  %empty_372 = shl i104 %empty, 72
  %empty_373 = or i104 %empty_372, %empty_371
  %empty_374 = zext i8 %4 to i112
  %empty_375 = zext i104 %empty_373 to i112
  %empty_376 = shl i112 %empty_374, 104
  %empty_377 = or i112 %empty_376, %empty_375
  %empty_378 = zext i1 %3 to i113
  %empty_379 = zext i112 %empty_377 to i113
  %empty_380 = shl i113 %empty_378, 112
  %empty_381 = or i113 %empty_380, %empty_379
  %empty_382 = zext i15 %2 to i128
  %empty_383 = zext i113 %empty_381 to i128
  %empty_384 = shl i128 %empty_382, 113
  %empty_385 = or i128 %empty_384, %empty_383
  %empty_386 = zext i64 %1 to i192
  %empty_387 = zext i128 %empty_385 to i192
  %empty_388 = shl i192 %empty_386, 128
  %empty_389 = or i192 %empty_388, %empty_387
  %empty_390 = zext i64 %0 to i256
  %empty_391 = zext i192 %empty_389 to i256
  %empty_392 = shl i256 %empty_390, 192
  %empty_393 = or i256 %empty_392, %empty_391
  ret i256 %empty_393
}

define weak i8 @_ssdm_op_PartSelect.i8.i512.i32.i32(i512, i32, i32) nounwind readnone {
entry:
  %empty = call i512 @llvm.part.select.i512(i512 %0, i32 %1, i32 %2)
  %empty_394 = trunc i512 %empty to i8
  ret i8 %empty_394
}

define weak i128 @_ssdm_op_PartSelect.i128.i512.i32.i32(i512, i32, i32) nounwind readnone {
entry:
  %empty = call i512 @llvm.part.select.i512(i512 %0, i32 %1, i32 %2)
  %empty_395 = trunc i512 %empty to i128
  ret i128 %empty_395
}

define void @memcachedPipeline(i64* %inData_V_data_V, i112* %inData_V_user_V, i8* %inData_V_keep_V, i1* %inData_V_last_V, i64* %outData_V_data_V, i112* %outData_V_user_V, i8* %outData_V_keep_V, i1* %outData_V_last_V, i40* %dramValueStoreMemRdCmd_V, i512* %dramValueStoreMemRdData_V_V, i40* %dramValueStoreMemWrCmd_V, i512* %dramValueStoreMemWrData_V_V, i48* %flashValueStoreMemRdCmd_V, i64* %flashValueStoreMemRdData_V_V, i48* %flashValueStoreMemWrCmd_V, i64* %flashValueStoreMemWrData_V_V, i512* %hashTableMemRdData_V_V, i40* %hashTableMemRdCmd_V, i512* %hashTableMemWrData_V_V, i40* %hashTableMemWrCmd_V, i32* %addressReturnOut_V_V, i32* %addressAssignDramIn_V_V, i32* %addressAssignFlashIn_V_V, i1* %flushReq_V, i1 %flushAck_V, i1* %flushDone_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str1945, i32 1, [1 x i8]* @str1946, [1 x i8]* @str1946, i32 1, i32 1, i8* @comp2memWrStatus_V_bin, i8* @comp2memWrStatus_V_bin)
  call void (...)* @_ssdm_op_SpecInterface(i8* @comp2memWrStatus_V_bin, [8 x i8]* @str1947, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1948, [1 x i8]* @str1948, [8 x i8]* @str1947)
  call void (...)* @_ssdm_op_SpecBitsMap(i40* %hashTableMemWrCmd_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i40* %hashTableMemRdCmd_V), !map !16
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %flashValueStoreMemWrCmd_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %flashValueStoreMemRdCmd_V), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i40* %dramValueStoreMemWrCmd_V), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i40* %dramValueStoreMemRdCmd_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %inData_V_data_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i112* %inData_V_user_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inData_V_keep_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inData_V_last_V), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %outData_V_data_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i112* %outData_V_user_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outData_V_keep_V), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outData_V_last_V), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %dramValueStoreMemRdData_V_V), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %dramValueStoreMemWrData_V_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %flashValueStoreMemRdData_V_V), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %flashValueStoreMemWrData_V_V), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %hashTableMemRdData_V_V), !map !99
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %hashTableMemWrData_V_V), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addressReturnOut_V_V), !map !107
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addressAssignDramIn_V_V), !map !111
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addressAssignFlashIn_V_V), !map !115
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %flushReq_V), !map !119
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %flushAck_V), !map !123
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %flushDone_V), !map !129
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1178, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1179, [1 x i8]* @str1179, [8 x i8]* @str1178) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1182, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1183, [1 x i8]* @str1183, [8 x i8]* @str1182) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1186, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1187, [1 x i8]* @str1187, [8 x i8]* @str1186) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1190, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1191, [1 x i8]* @str1191, [8 x i8]* @str1190) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1194, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1195, [1 x i8]* @str1195, [8 x i8]* @str1194) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1198, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1199, [1 x i8]* @str1199, [8 x i8]* @str1198) nounwind
  %empty_396 = call i32 (...)* @_ssdm_op_SpecChannel([32 x i8]* @str1200, i32 1, [1 x i8]* @str1201, [1 x i8]* @str1201, i32 16, i32 16, i256* @requestParser2hashTable_V, i256* @requestParser2hashTable_V)
  call void (...)* @_ssdm_op_SpecInterface(i256* @requestParser2hashTable_V, [8 x i8]* @str1202, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1203, [1 x i8]* @str1203, [8 x i8]* @str1202) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1206, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1207, [1 x i8]* @str1207, [8 x i8]* @str1206) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1210, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1211, [1 x i8]* @str1211, [8 x i8]* @str1210) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1214, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1215, [1 x i8]* @str1215, [8 x i8]* @str1214) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1218, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1219, [1 x i8]* @str1219, [8 x i8]* @str1218) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1222, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1223, [1 x i8]* @str1223, [8 x i8]* @str1222) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1226, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1227, [1 x i8]* @str1227, [8 x i8]* @str1226) nounwind
  %empty_397 = call i32 (...)* @_ssdm_op_SpecChannel([27 x i8]* @str1228, i32 1, [1 x i8]* @str1229, [1 x i8]* @str1229, i32 16, i32 16, i256* @hashTable2splitter_V, i256* @hashTable2splitter_V)
  call void (...)* @_ssdm_op_SpecInterface(i256* @hashTable2splitter_V, [8 x i8]* @str1230, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1231, [1 x i8]* @str1231, [8 x i8]* @str1230) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1234, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1235, [1 x i8]* @str1235, [8 x i8]* @str1234) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1238, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1239, [1 x i8]* @str1239, [8 x i8]* @str1238) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1242, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1243, [1 x i8]* @str1243, [8 x i8]* @str1242) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1246, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1247, [1 x i8]* @str1247, [8 x i8]* @str1246) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1250, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1251, [1 x i8]* @str1251, [8 x i8]* @str1250) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1254, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1255, [1 x i8]* @str1255, [8 x i8]* @str1254) nounwind
  %empty_398 = call i32 (...)* @_ssdm_op_SpecChannel([33 x i8]* @str1256, i32 1, [1 x i8]* @str1257, [1 x i8]* @str1257, i32 16, i32 16, i256* @merger2responseFormatter_V, i256* @merger2responseFormatter_V)
  call void (...)* @_ssdm_op_SpecInterface(i256* @merger2responseFormatter_V, [8 x i8]* @str1258, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1259, [1 x i8]* @str1259, [8 x i8]* @str1258) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1262, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1263, [1 x i8]* @str1263, [8 x i8]* @str1262) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1266, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1267, [1 x i8]* @str1267, [8 x i8]* @str1266) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1270, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1271, [1 x i8]* @str1271, [8 x i8]* @str1270) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1274, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1275, [1 x i8]* @str1275, [8 x i8]* @str1274) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1278, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1279, [1 x i8]* @str1279, [8 x i8]* @str1278) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1282, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1283, [1 x i8]* @str1283, [8 x i8]* @str1282) nounwind
  %empty_399 = call i32 (...)* @_ssdm_op_SpecChannel([33 x i8]* @str1284, i32 1, [1 x i8]* @str1285, [1 x i8]* @str1285, i32 16, i32 16, i256* @splitter2valueStoreFlash_V, i256* @splitter2valueStoreFlash_V)
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreFlash_V, [8 x i8]* @str1286, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1287, [1 x i8]* @str1287, [8 x i8]* @str1286) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1290, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1291, [1 x i8]* @str1291, [8 x i8]* @str1290) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1294, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1295, [1 x i8]* @str1295, [8 x i8]* @str1294) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1298, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1299, [1 x i8]* @str1299, [8 x i8]* @str1298) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1302, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1303, [1 x i8]* @str1303, [8 x i8]* @str1302) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1306, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1307, [1 x i8]* @str1307, [8 x i8]* @str1306) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1310, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1311, [1 x i8]* @str1311, [8 x i8]* @str1310) nounwind
  %empty_400 = call i32 (...)* @_ssdm_op_SpecChannel([32 x i8]* @str1312, i32 1, [1 x i8]* @str1313, [1 x i8]* @str1313, i32 16, i32 16, i256* @splitter2valueStoreDram_V, i256* @splitter2valueStoreDram_V)
  call void (...)* @_ssdm_op_SpecInterface(i256* @splitter2valueStoreDram_V, [8 x i8]* @str1314, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1315, [1 x i8]* @str1315, [8 x i8]* @str1314) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1318, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1319, [1 x i8]* @str1319, [8 x i8]* @str1318) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1322, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1323, [1 x i8]* @str1323, [8 x i8]* @str1322) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1326, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1327, [1 x i8]* @str1327, [8 x i8]* @str1326) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1330, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1331, [1 x i8]* @str1331, [8 x i8]* @str1330) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1334, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1335, [1 x i8]* @str1335, [8 x i8]* @str1334) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1338, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1339, [1 x i8]* @str1339, [8 x i8]* @str1338) nounwind
  %empty_401 = call i32 (...)* @_ssdm_op_SpecChannel([31 x i8]* @str1340, i32 1, [1 x i8]* @str1341, [1 x i8]* @str1341, i32 16, i32 16, i256* @valueStoreFlash2merger_V, i256* @valueStoreFlash2merger_V)
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreFlash2merger_V, [8 x i8]* @str1342, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1343, [1 x i8]* @str1343, [8 x i8]* @str1342) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1346, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1347, [1 x i8]* @str1347, [8 x i8]* @str1346) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1350, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1351, [1 x i8]* @str1351, [8 x i8]* @str1350) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1354, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1355, [1 x i8]* @str1355, [8 x i8]* @str1354) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1358, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1359, [1 x i8]* @str1359, [8 x i8]* @str1358) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1362, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1363, [1 x i8]* @str1363, [8 x i8]* @str1362) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1366, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1367, [1 x i8]* @str1367, [8 x i8]* @str1366) nounwind
  %empty_402 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @str1368, i32 1, [1 x i8]* @str1369, [1 x i8]* @str1369, i32 16, i32 16, i256* @valueStoreDram2merger_V, i256* @valueStoreDram2merger_V)
  call void (...)* @_ssdm_op_SpecInterface(i256* @valueStoreDram2merger_V, [8 x i8]* @str1370, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1371, [1 x i8]* @str1371, [8 x i8]* @str1370) nounwind
  %empty_403 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @str1372, i32 1, [1 x i8]* @str1373, [1 x i8]* @str1373, i32 16, i32 16, i16* @flash_Disp2rec_V_V, i16* @flash_Disp2rec_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i16* @flash_Disp2rec_V_V, [8 x i8]* @str1374, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1375, [1 x i8]* @str1375, [8 x i8]* @str1374)
  call void (...)* @_ssdm_op_SpecInterface(i66* @flashDemux2setPathValue_V, [8 x i8]* @str1378, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1379, [1 x i8]* @str1379, [8 x i8]* @str1378) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @flashDemux2setPathValue_V, [8 x i8]* @str1382, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1383, [1 x i8]* @str1383, [8 x i8]* @str1382) nounwind
  %empty_404 = call i32 (...)* @_ssdm_op_SpecChannel([32 x i8]* @str1384, i32 1, [1 x i8]* @str1385, [1 x i8]* @str1385, i32 96, i32 96, i66* @flashDemux2setPathValue_V, i66* @flashDemux2setPathValue_V)
  call void (...)* @_ssdm_op_SpecInterface(i66* @flashDemux2setPathValue_V, [8 x i8]* @str1386, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1387, [1 x i8]* @str1387, [8 x i8]* @str1386) nounwind
  %empty_405 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str1388, i32 1, [1 x i8]* @str1389, [1 x i8]* @str1389, i32 96, i32 96, i64* @flashGetPath2remux_V_V, i64* @flashGetPath2remux_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @flashGetPath2remux_V_V, [8 x i8]* @str1390, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1391, [1 x i8]* @str1391, [8 x i8]* @str1390)
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2setPathMetadata_V, [8 x i8]* @str1394, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1395, [1 x i8]* @str1395, [8 x i8]* @str1394) nounwind
  %empty_406 = call i32 (...)* @_ssdm_op_SpecChannel([38 x i8]* @str1396, i32 1, [1 x i8]* @str1397, [1 x i8]* @str1397, i32 16, i32 16, i48* @flashDemux2setPathMetadata_V, i48* @flashDemux2setPathMetadata_V)
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2setPathMetadata_V, [8 x i8]* @str1398, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1399, [1 x i8]* @str1399, [8 x i8]* @str1398) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2getPath_V, [8 x i8]* @str1402, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1403, [1 x i8]* @str1403, [8 x i8]* @str1402) nounwind
  %empty_407 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @str1404, i32 1, [1 x i8]* @str1405, [1 x i8]* @str1405, i32 16, i32 16, i48* @flashDemux2getPath_V, i48* @flashDemux2getPath_V)
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2getPath_V, [8 x i8]* @str1406, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1407, [1 x i8]* @str1407, [8 x i8]* @str1406) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1410, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1411, [1 x i8]* @str1411, [8 x i8]* @str1410) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1414, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1415, [1 x i8]* @str1415, [8 x i8]* @str1414) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1418, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1419, [1 x i8]* @str1419, [8 x i8]* @str1418) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1422, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1423, [1 x i8]* @str1423, [8 x i8]* @str1422) nounwind
  %empty_408 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str1424, i32 1, [1 x i8]* @str1425, [1 x i8]* @str1425, i32 24, i32 24, i128* @flashMetadataBuffer_V, i128* @flashMetadataBuffer_V)
  call void (...)* @_ssdm_op_SpecInterface(i128* @flashMetadataBuffer_V, [8 x i8]* @str1426, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1427, [1 x i8]* @str1427, [8 x i8]* @str1426) nounwind
  %empty_409 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @str1428, i32 1, [1 x i8]* @str1429, [1 x i8]* @str1429, i32 48, i32 48, i64* @flashKeyBuffer_V_V, i64* @flashKeyBuffer_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @flashKeyBuffer_V_V, [8 x i8]* @str1430, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1431, [1 x i8]* @str1431, [8 x i8]* @str1430)
  call void (...)* @_ssdm_op_SpecInterface(i2* @filterSeq_V_V, [8 x i8]* @str1434, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1435, [1 x i8]* @str1435, [8 x i8]* @str1434)
  %empty_410 = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @str1436, i32 1, [1 x i8]* @str1437, [1 x i8]* @str1437, i32 16, i32 16, i12* @disp2rec_V_V, i12* @disp2rec_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i12* @disp2rec_V_V, [8 x i8]* @str1438, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1439, [1 x i8]* @str1439, [8 x i8]* @str1438)
  call void (...)* @_ssdm_op_SpecInterface(i66* @demux2setPathValue_V, [8 x i8]* @str1442, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1443, [1 x i8]* @str1443, [8 x i8]* @str1442) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @demux2setPathValue_V, [8 x i8]* @str1446, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1447, [1 x i8]* @str1447, [8 x i8]* @str1446) nounwind
  %empty_411 = call i32 (...)* @_ssdm_op_SpecChannel([27 x i8]* @str1448, i32 1, [1 x i8]* @str1449, [1 x i8]* @str1449, i32 96, i32 96, i66* @demux2setPathValue_V, i66* @demux2setPathValue_V)
  call void (...)* @_ssdm_op_SpecInterface(i66* @demux2setPathValue_V, [8 x i8]* @str1450, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1451, [1 x i8]* @str1451, [8 x i8]* @str1450) nounwind
  %empty_412 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @str1452, i32 1, [1 x i8]* @str1453, [1 x i8]* @str1453, i32 96, i32 96, i64* @getPath2remux_V_V, i64* @getPath2remux_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @getPath2remux_V_V, [8 x i8]* @str1454, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1455, [1 x i8]* @str1455, [8 x i8]* @str1454)
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2setPathMetadata_V, [8 x i8]* @str1458, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1459, [1 x i8]* @str1459, [8 x i8]* @str1458) nounwind
  %empty_413 = call i32 (...)* @_ssdm_op_SpecChannel([33 x i8]* @str1460, i32 1, [1 x i8]* @str1461, [1 x i8]* @str1461, i32 16, i32 16, i45* @demux2setPathMetadata_V, i45* @demux2setPathMetadata_V)
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2setPathMetadata_V, [8 x i8]* @str1462, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1463, [1 x i8]* @str1463, [8 x i8]* @str1462) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2getPath_V, [8 x i8]* @str1466, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1467, [1 x i8]* @str1467, [8 x i8]* @str1466) nounwind
  %empty_414 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @str1468, i32 1, [1 x i8]* @str1469, [1 x i8]* @str1469, i32 16, i32 16, i45* @demux2getPath_V, i45* @demux2getPath_V)
  call void (...)* @_ssdm_op_SpecInterface(i45* @demux2getPath_V, [8 x i8]* @str1470, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1471, [1 x i8]* @str1471, [8 x i8]* @str1470) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1474, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1475, [1 x i8]* @str1475, [8 x i8]* @str1474) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1478, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1479, [1 x i8]* @str1479, [8 x i8]* @str1478) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1482, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1483, [1 x i8]* @str1483, [8 x i8]* @str1482) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1486, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1487, [1 x i8]* @str1487, [8 x i8]* @str1486) nounwind
  %empty_415 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str1488, i32 1, [1 x i8]* @str1489, [1 x i8]* @str1489, i32 24, i32 24, i128* @metadataBuffer_V, i128* @metadataBuffer_V)
  call void (...)* @_ssdm_op_SpecInterface(i128* @metadataBuffer_V, [8 x i8]* @str1490, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1491, [1 x i8]* @str1491, [8 x i8]* @str1490) nounwind
  %empty_416 = call i32 (...)* @_ssdm_op_SpecChannel([14 x i8]* @str1492, i32 1, [1 x i8]* @str1493, [1 x i8]* @str1493, i32 48, i32 48, i64* @keyBuffer_V_V, i64* @keyBuffer_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @keyBuffer_V_V, [8 x i8]* @str1494, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1495, [1 x i8]* @str1495, [8 x i8]* @str1494)
  %empty_417 = call i32 (...)* @_ssdm_op_SpecChannel([17 x i8]* @str1496, i32 1, [1 x i8]* @str1497, [1 x i8]* @str1497, i32 16, i32 16, i1* @filterPopSet_V_V, i1* @filterPopSet_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i1* @filterPopSet_V_V, [8 x i8]* @str1498, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1499, [1 x i8]* @str1499, [8 x i8]* @str1498)
  %empty_418 = call i32 (...)* @_ssdm_op_SpecChannel([17 x i8]* @str1500, i32 1, [1 x i8]* @str1501, [1 x i8]* @str1501, i32 16, i32 16, i1* @filterPopGet_V_V, i1* @filterPopGet_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i1* @filterPopGet_V_V, [8 x i8]* @str1502, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1503, [1 x i8]* @str1503, [8 x i8]* @str1502)
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1506, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1507, [1 x i8]* @str1507, [8 x i8]* @str1506) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1510, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1511, [1 x i8]* @str1511, [8 x i8]* @str1510) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1514, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1515, [1 x i8]* @str1515, [8 x i8]* @str1514) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1518, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1519, [1 x i8]* @str1519, [8 x i8]* @str1518) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1522, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1523, [1 x i8]* @str1523, [8 x i8]* @str1522) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1526, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1527, [1 x i8]* @str1527, [8 x i8]* @str1526) nounwind
  %empty_419 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str1528, i32 1, [1 x i8]* @str1529, [1 x i8]* @str1529, i32 16, i32 16, i256* @accCtrl2demux_V, i256* @accCtrl2demux_V)
  call void (...)* @_ssdm_op_SpecInterface(i256* @accCtrl2demux_V, [8 x i8]* @str1530, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1531, [1 x i8]* @str1531, [8 x i8]* @str1530) nounwind
  %empty_420 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str1532, i32 1, [1 x i8]* @str1533, [1 x i8]* @str1533, i32 8, i32 8, i248* @metadataBuffer_rf_V_V, i248* @metadataBuffer_rf_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i248* @metadataBuffer_rf_V_V, [8 x i8]* @str1534, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1535, [1 x i8]* @str1535, [8 x i8]* @str1534)
  %empty_421 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @str1536, i32 1, [1 x i8]* @str1537, [1 x i8]* @str1537, i32 1024, i32 1024, i64* @valueBuffer_rf_V_V, i64* @valueBuffer_rf_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @valueBuffer_rf_V_V, [8 x i8]* @str1538, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1539, [1 x i8]* @str1539, [8 x i8]* @str1538)
  %empty_422 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str1540, i32 1, [1 x i8]* @str1541, [1 x i8]* @str1541, i32 16, i32 16, i248* @metadataBuffer_rp_V_V, i248* @metadataBuffer_rp_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i248* @metadataBuffer_rp_V_V, [8 x i8]* @str1542, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1543, [1 x i8]* @str1543, [8 x i8]* @str1542)
  %empty_423 = call i32 (...)* @_ssdm_op_SpecChannel([17 x i8]* @str1544, i32 1, [1 x i8]* @str1545, [1 x i8]* @str1545, i32 128, i32 128, i64* @keyBuffer_rp_V_V, i64* @keyBuffer_rp_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @keyBuffer_rp_V_V, [8 x i8]* @str1546, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1547, [1 x i8]* @str1547, [8 x i8]* @str1546)
  %empty_424 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @str1548, i32 1, [1 x i8]* @str1549, [1 x i8]* @str1549, i32 1024, i32 1024, i64* @valueBuffer_rp_V_V, i64* @valueBuffer_rp_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @valueBuffer_rp_V_V, [8 x i8]* @str1550, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1551, [1 x i8]* @str1551, [8 x i8]* @str1550)
  %empty_425 = call i32 (...)* @_ssdm_op_SpecChannel([18 x i8]* @str1552, i32 1, [1 x i8]* @str1553, [1 x i8]* @str1553, i32 128, i32 128, i64* @hashKeyBuffer_V_V, i64* @hashKeyBuffer_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @hashKeyBuffer_V_V, [8 x i8]* @str1554, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1555, [1 x i8]* @str1555, [8 x i8]* @str1554)
  %empty_426 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str1556, i32 1, [1 x i8]* @str1557, [1 x i8]* @str1557, i32 1024, i32 1024, i64* @hashValueBuffer_V_V, i64* @hashValueBuffer_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @hashValueBuffer_V_V, [8 x i8]* @str1558, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1559, [1 x i8]* @str1559, [8 x i8]* @str1558)
  %empty_427 = call i32 (...)* @_ssdm_op_SpecChannel([17 x i8]* @str1560, i32 1, [1 x i8]* @str1561, [1 x i8]* @str1561, i32 32, i32 32, i128* @hashMdBuffer_V_V, i128* @hashMdBuffer_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i128* @hashMdBuffer_V_V, [8 x i8]* @str1562, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1563, [1 x i8]* @str1563, [8 x i8]* @str1562)
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2cc_V, [8 x i8]* @str1566, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1567, [1 x i8]* @str1567, [8 x i8]* @str1566) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2cc_V, [8 x i8]* @str1570, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1571, [1 x i8]* @str1571, [8 x i8]* @str1570) nounwind
  %empty_428 = call i32 (...)* @_ssdm_op_SpecChannel([14 x i8]* @str1572, i32 1, [1 x i8]* @str1573, [1 x i8]* @str1573, i32 10, i32 10, i130* @in2cc_V, i130* @in2cc_V)
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2cc_V, [8 x i8]* @str1574, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1575, [1 x i8]* @str1575, [8 x i8]* @str1574) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1578, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1579, [1 x i8]* @str1579, [8 x i8]* @str1578) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1582, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1583, [1 x i8]* @str1583, [8 x i8]* @str1582) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1586, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1587, [1 x i8]* @str1587, [8 x i8]* @str1586) nounwind
  %empty_429 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str1588, i32 1, [1 x i8]* @str1589, [1 x i8]* @str1589, i32 10, i32 10, i64* @in2ccMd_V, i64* @in2ccMd_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @in2ccMd_V, [8 x i8]* @str1590, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1591, [1 x i8]* @str1591, [8 x i8]* @str1590) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2hash_V, [8 x i8]* @str1594, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1595, [1 x i8]* @str1595, [8 x i8]* @str1594) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2hash_V, [8 x i8]* @str1598, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1599, [1 x i8]* @str1599, [8 x i8]* @str1598) nounwind
  %empty_430 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str1600, i32 1, [1 x i8]* @str1601, [1 x i8]* @str1601, i32 1, i32 1, i130* @in2hash_V, i130* @in2hash_V)
  call void (...)* @_ssdm_op_SpecInterface(i130* @in2hash_V, [8 x i8]* @str1602, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1603, [1 x i8]* @str1603, [8 x i8]* @str1602) nounwind
  %empty_431 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @str1604, i32 1, [1 x i8]* @str1605, [1 x i8]* @str1605, i32 1, i32 1, i8* @in2hashKeyLength_V_V, i8* @in2hashKeyLength_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* @in2hashKeyLength_V_V, [8 x i8]* @str1606, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1607, [1 x i8]* @str1607, [8 x i8]* @str1606)
  %empty_432 = call i32 (...)* @_ssdm_op_SpecChannel([12 x i8]* @str1608, i32 1, [1 x i8]* @str1609, [1 x i8]* @str1609, i32 1, i32 1, i32* @hash2cc_V_V, i32* @hash2cc_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i32* @hash2cc_V_V, [8 x i8]* @str1610, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1611, [1 x i8]* @str1611, [8 x i8]* @str1610)
  call void (...)* @_ssdm_op_SpecInterface(i130* @cc2memRead_V, [8 x i8]* @str1614, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1615, [1 x i8]* @str1615, [8 x i8]* @str1614) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @cc2memRead_V, [8 x i8]* @str1618, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1619, [1 x i8]* @str1619, [8 x i8]* @str1618) nounwind
  %empty_433 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @str1620, i32 1, [1 x i8]* @str1621, [1 x i8]* @str1621, i32 10, i32 10, i130* @cc2memRead_V, i130* @cc2memRead_V)
  call void (...)* @_ssdm_op_SpecInterface(i130* @cc2memRead_V, [8 x i8]* @str1622, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1623, [1 x i8]* @str1623, [8 x i8]* @str1622) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1626, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1627, [1 x i8]* @str1627, [8 x i8]* @str1626) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1630, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1631, [1 x i8]* @str1631, [8 x i8]* @str1630) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1634, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1635, [1 x i8]* @str1635, [8 x i8]* @str1634) nounwind
  %empty_434 = call i32 (...)* @_ssdm_op_SpecChannel([29 x i8]* @str1636, i32 1, [1 x i8]* @str1637, [1 x i8]* @str1637, i32 10, i32 10, i64* @cc2memReadMd_V, i64* @cc2memReadMd_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @cc2memReadMd_V, [8 x i8]* @str1638, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1639, [1 x i8]* @str1639, [8 x i8]* @str1638) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @memRd2comp_V, [8 x i8]* @str1642, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1643, [1 x i8]* @str1643, [8 x i8]* @str1642) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @memRd2comp_V, [8 x i8]* @str1646, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1647, [1 x i8]* @str1647, [8 x i8]* @str1646) nounwind
  %empty_435 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @str1648, i32 1, [1 x i8]* @str1649, [1 x i8]* @str1649, i32 10, i32 10, i130* @memRd2comp_V, i130* @memRd2comp_V)
  call void (...)* @_ssdm_op_SpecInterface(i130* @memRd2comp_V, [8 x i8]* @str1650, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1651, [1 x i8]* @str1651, [8 x i8]* @str1650) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1654, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1655, [1 x i8]* @str1655, [8 x i8]* @str1654) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1658, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1659, [1 x i8]* @str1659, [8 x i8]* @str1658) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1662, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1663, [1 x i8]* @str1663, [8 x i8]* @str1662) nounwind
  %empty_436 = call i32 (...)* @_ssdm_op_SpecChannel([29 x i8]* @str1664, i32 1, [1 x i8]* @str1665, [1 x i8]* @str1665, i32 10, i32 10, i64* @memRd2compMd_V, i64* @memRd2compMd_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @memRd2compMd_V, [8 x i8]* @str1666, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1667, [1 x i8]* @str1667, [8 x i8]* @str1666) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1670, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1671, [1 x i8]* @str1671, [8 x i8]* @str1670) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1674, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1675, [1 x i8]* @str1675, [8 x i8]* @str1674) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1678, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1679, [1 x i8]* @str1679, [8 x i8]* @str1678) nounwind
  %empty_437 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @str1680, i32 1, [1 x i8]* @str1681, [1 x i8]* @str1681, i32 1, i32 1, i57* @memWr2out_V, i57* @memWr2out_V)
  call void (...)* @_ssdm_op_SpecInterface(i57* @memWr2out_V, [8 x i8]* @str1682, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1683, [1 x i8]* @str1683, [8 x i8]* @str1682) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @comp2memWrKey_V, [8 x i8]* @str1686, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1687, [1 x i8]* @str1687, [8 x i8]* @str1686) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i130* @comp2memWrKey_V, [8 x i8]* @str1690, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1691, [1 x i8]* @str1691, [8 x i8]* @str1690) nounwind
  %empty_438 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str1692, i32 1, [1 x i8]* @str1693, [1 x i8]* @str1693, i32 10, i32 10, i130* @comp2memWrKey_V, i130* @comp2memWrKey_V)
  call void (...)* @_ssdm_op_SpecInterface(i130* @comp2memWrKey_V, [8 x i8]* @str1694, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1695, [1 x i8]* @str1695, [8 x i8]* @str1694) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1698, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1699, [1 x i8]* @str1699, [8 x i8]* @str1698) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1702, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1703, [1 x i8]* @str1703, [8 x i8]* @str1702) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1706, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1707, [1 x i8]* @str1707, [8 x i8]* @str1706) nounwind
  %empty_439 = call i32 (...)* @_ssdm_op_SpecChannel([29 x i8]* @str1708, i32 1, [1 x i8]* @str1709, [1 x i8]* @str1709, i32 10, i32 10, i64* @comp2memWrMd_V, i64* @comp2memWrMd_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* @comp2memWrMd_V, [8 x i8]* @str1710, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1711, [1 x i8]* @str1711, [8 x i8]* @str1710) nounwind
  %empty_440 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str1712, i32 1, [1 x i8]* @str1713, [1 x i8]* @str1713, i32 10, i32 10, i512* @comp2memWrMemData_V_V, i512* @comp2memWrMemData_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i512* @comp2memWrMemData_V_V, [8 x i8]* @str1714, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1715, [1 x i8]* @str1715, [8 x i8]* @str1714)
  %empty_441 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @str1716, i32 1, [1 x i8]* @str1717, [1 x i8]* @str1717, i32 1, i32 1, i1* @dec2cc_V_V, i1* @dec2cc_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i1* @dec2cc_V_V, [8 x i8]* @str1718, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1719, [1 x i8]* @str1719, [8 x i8]* @str1718)
  %empty_442 = call i32 (...)* @_ssdm_op_SpecChannel([15 x i8]* @str1720, i32 1, [1 x i8]* @str1721, [1 x i8]* @str1721, i32 8, i32 8, i96* @resizedKey_V_V, i96* @resizedKey_V_V)
  call void (...)* @_ssdm_op_SpecInterface(i96* @resizedKey_V_V, [8 x i8]* @str1722, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1723, [1 x i8]* @str1723, [8 x i8]* @str1722)
  %empty_443 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @str1724, i32 1, [1 x i8]* @str1725, [1 x i8]* @str1725, i32 1, i32 1, i32* @resizedKeyLength_V, i32* @resizedKeyLength_V)
  call void (...)* @_ssdm_op_SpecInterface(i32* @resizedKeyLength_V, [8 x i8]* @str1726, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1727, [1 x i8]* @str1727, [8 x i8]* @str1726)
  %empty_444 = call i32 (...)* @_ssdm_op_SpecChannel([19 x i8]* @str1728, i32 1, [1 x i8]* @str1729, [1 x i8]* @str1729, i32 1, i32 1, i32* @resizedInitValue_V, i32* @resizedInitValue_V)
  call void (...)* @_ssdm_op_SpecInterface(i32* @resizedInitValue_V, [8 x i8]* @str1730, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1731, [1 x i8]* @str1731, [8 x i8]* @str1730)
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %flushReq_V, [8 x i8]* @p_str2, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %flushAck_V, [8 x i8]* @p_str2, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %flushDone_V, [8 x i8]* @p_str2, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %inData_V_data_V, i112* %inData_V_user_V, i8* %inData_V_keep_V, i1* %inData_V_last_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %outData_V_data_V, i112* %outData_V_user_V, i8* %outData_V_keep_V, i1* %outData_V_last_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %hashTableMemWrData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %hashTableMemRdData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i40* %hashTableMemRdCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i40* %hashTableMemWrCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* %flashValueStoreMemRdCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i64* %flashValueStoreMemRdData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* %flashValueStoreMemWrCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i64* %flashValueStoreMemWrData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i40* %dramValueStoreMemRdCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %dramValueStoreMemRdData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i40* %dramValueStoreMemWrCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %dramValueStoreMemWrData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addressReturnOut_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addressAssignDramIn_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addressAssignFlashIn_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %flushAck_V_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %flushAck_V)
  call fastcc void @memcachedPipeline_bp_f(i64* %inData_V_data_V, i112* %inData_V_user_V, i8* %inData_V_keep_V, i1* %inData_V_last_V)
  call fastcc void @memcachedPipeline_bp_r() nounwind
  call fastcc void @memcachedPipeline_ht_inputLogic() nounwind
  call fastcc void @memcachedPipeline_hashKeyResizer() nounwind
  call fastcc void @memcachedPipeline_bobj() nounwind
  call fastcc void @memcachedPipeline_concurrencyControl() nounwind
  call fastcc void @memcachedPipeline_memRead(i40* %hashTableMemRdCmd_V)
  call fastcc void @memcachedPipeline_ht_compare(i512* %hashTableMemRdData_V_V)
  call fastcc void @memcachedPipeline_memWrite(i40* %hashTableMemWrCmd_V, i512* %hashTableMemWrData_V_V, i32* %addressReturnOut_V_V, i32* %addressAssignDramIn_V_V, i32* %addressAssignFlashIn_V_V, i1* %flushReq_V, i1 %flushAck_V_read, i1* %flushDone_V)
  call fastcc void @memcachedPipeline_ht_outputLogic() nounwind
  call fastcc void @memcachedPipeline_splitter()
  call fastcc void @memcachedPipeline_accessControl() nounwind
  call fastcc void @memcachedPipeline_demux() nounwind
  call fastcc void @memcachedPipeline_setPath(i40* %dramValueStoreMemWrCmd_V, i512* %dramValueStoreMemWrData_V_V)
  call fastcc void @memcachedPipeline_dispatch(i40* %dramValueStoreMemRdCmd_V)
  call fastcc void @memcachedPipeline_receive(i512* %dramValueStoreMemRdData_V_V)
  call fastcc void @memcachedPipeline_remux() nounwind
  call fastcc void @memcachedPipeline_flashDemux() nounwind
  call fastcc void @memcachedPipeline_flashSetPathNoFilter(i48* %flashValueStoreMemWrCmd_V, i64* %flashValueStoreMemWrData_V_V)
  call fastcc void @memcachedPipeline_flashDispatch(i48* %flashValueStoreMemRdCmd_V)
  call fastcc void @memcachedPipeline_flashReceiveNoFilter(i64* %flashValueStoreMemRdData_V_V)
  call fastcc void @memcachedPipeline_flashRemux() nounwind
  call fastcc void @memcachedPipeline_merger()
  call fastcc void @memcachedPipeline_response_f() nounwind
  call fastcc void @memcachedPipeline_response_r(i64* %outData_V_data_V, i112* %outData_V_user_V, i8* %outData_V_keep_V, i1* %outData_V_last_V)
  ret void
}

define internal fastcc void @memcachedPipeline_flashDispatch(i48* %memRdCmd_V) {
  call void (...)* @_ssdm_op_SpecInterface(i48* %memRdCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2getPath_V, [8 x i8]* @str1406, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1407, [1 x i8]* @str1407, [8 x i8]* @str1406) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2getPath_V, [8 x i8]* @str1402, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1403, [1 x i8]* @str1403, [8 x i8]* @str1402) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16* @flash_Disp2rec_V_V, [8 x i8]* @str1374, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1375, [1 x i8]* @str1375, [8 x i8]* @str1374)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str191) nounwind
  %tmp19 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i48P(i48* @flashDemux2getPath_V, i32 1)
  br i1 %tmp19, label %._crit_edge50, label %._crit_edge

._crit_edge50:                                    ; preds = %0
  %tmp1 = call i48 @_ssdm_op_Read.ap_fifo.volatile.i48P(i48* @flashDemux2getPath_V)
  %getCtrlWord_address_V = trunc i48 %tmp1 to i32
  %tmp_V = call i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48 %tmp1, i32 32, i32 47)
  %tmp_100 = call i13 @_ssdm_op_PartSelect.i13.i48.i32.i32(i48 %tmp1, i32 35, i32 47)
  %op2_assign = call i16 @_ssdm_op_BitConcatenate.i16.i13.i3(i13 %tmp_100, i3 0)
  %tmp_77 = icmp ugt i16 %tmp_V, %op2_assign
  %tmp_99 = add i13 1, %tmp_100
  %getCtrlWord_count_V = select i1 %tmp_77, i13 %tmp_99, i13 %tmp_100
  %tmp_1 = call i45 @_ssdm_op_BitConcatenate.i45.i13.i32(i13 %getCtrlWord_count_V, i32 %getCtrlWord_address_V)
  %tmp_1_cast = zext i45 %tmp_1 to i48
  call void @_ssdm_op_Write.axis.volatile.i48P(i48* %memRdCmd_V, i48 %tmp_1_cast)
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* @flash_Disp2rec_V_V, i16 %tmp_V)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge50, %0
  ret void
}

define internal fastcc void @memcachedPipeline_flashSetPathNoFilter(i48* %memWrCmd_V, i64* %memWrData_V_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i64* %memWrData_V_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i48* %memWrCmd_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2setPathMetadata_V, [8 x i8]* @str1398, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1399, [1 x i8]* @str1399, [8 x i8]* @str1398) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* @flashDemux2setPathMetadata_V, [8 x i8]* @str1394, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1395, [1 x i8]* @str1395, [8 x i8]* @str1394) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @flashDemux2setPathValue_V, [8 x i8]* @str1386, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1387, [1 x i8]* @str1387, [8 x i8]* @str1386) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @flashDemux2setPathValue_V, [8 x i8]* @str1382, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1383, [1 x i8]* @str1383, [8 x i8]* @str1382) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i66* @flashDemux2setPathValue_V, [8 x i8]* @str1378, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str1379, [1 x i8]* @str1379, [8 x i8]* @str1378) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str90, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str191, [1 x i8]* @p_str191, [1 x i8]* @p_str191) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str191) nounwind
  %flashSetState_load = load i1* @flashSetState, align 1
  br i1 %flashSetState_load, label %3, label %0

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i48P(i48* @flashDemux2setPathMetadata_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge80

; <label>:1                                       ; preds = %0
  %tmp_82 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i66P(i66* @flashDemux2setPathValue_V, i32 1)
  br i1 %tmp_82, label %._crit_edge82, label %._crit_edge80

._crit_edge82:                                    ; preds = %1
  %tmp1 = call i48 @_ssdm_op_Read.ap_fifo.volatile.i48P(i48* @flashDemux2setPathMetadata_V)
  %setCtrlWord_address_V = trunc i48 %tmp1 to i32
  %tmp_length_V_load_new6 = call i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48 %tmp1, i32 32, i32 47)
  %tmp_101 = call i13 @_ssdm_op_PartSelect.i13.i48.i32.i32(i48 %tmp1, i32 35, i32 47)
  %op2_assign = call i16 @_ssdm_op_BitConcatenate.i16.i13.i3(i13 %tmp_101, i3 0)
  %tmp_73 = icmp ugt i16 %tmp_length_V_load_new6, %op2_assign
  %tmp_104 = add i13 1, %tmp_101
  %setCtrlWord_count_V = select i1 %tmp_73, i13 %tmp_104, i13 %tmp_101
  %tmp_1 = call i66 @_ssdm_op_Read.ap_fifo.volatile.i66P(i66* @flashDemux2setPathValue_V)
  %tmp_V_111 = trunc i66 %tmp_1 to i64
  %tmp_702 = call i1 @_ssdm_op_BitSelect.i1.i66.i32(i66 %tmp_1, i32 64)
  br i1 %tmp_702, label %2, label %._crit_edge83

; <label>:2                                       ; preds = %._crit_edge82
  %tmp_2 = call i45 @_ssdm_op_BitConcatenate.i45.i13.i32(i13 %setCtrlWord_count_V, i32 %setCtrlWord_address_V)
  %tmp_2_cast = zext i45 %tmp_2 to i48
  call void @_ssdm_op_Write.axis.volatile.i48P(i48* %memWrCmd_V, i48 %tmp_2_cast)
  call void @_ssdm_op_Write.axis.volatile.i64P(i64* %memWrData_V_V, i64 %tmp_V_111)
  store i1 true, i1* @flashSetState, align 1
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %2, %._crit_edge82
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge83, %1, %0
  br label %._crit_edge79

; <label>:3                                       ; preds = %codeRepl
  %tmp_81 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i66P(i66* @flashDemux2setPathValue_V, i32 1)
  br i1 %tmp_81, label %4, label %._crit_edge84

; <label>:4                                       ; preds = %3
  %tmp_3 = call i66 @_ssdm_op_Read.ap_fifo.volatile.i66P(i66* @flashDemux2setPathValue_V)
  %tmp_V = trunc i66 %tmp_3 to i64
  %tmp_699 = call i1 @_ssdm_op_BitSelect.i1.i66.i32(i66 %tmp_3, i32 65)
  call void @_ssdm_op_Write.axis.volatile.i64P(i64* %memWrData_V_V, i64 %tmp_V)
  br i1 %tmp_699, label %5, label %._crit_edge85

; <label>:5                                       ; preds = %4
  store i1 false, i1* @flashSetState, align 1
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %5, %4
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %._crit_edge85, %3
  br label %._crit_edge79

._crit_edge79:                                    ; preds = %._crit_edge84, %._crit_edge80
  ret void
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i1.i8.i8(i1, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_445 = zext i8 %2 to i16
  %empty_446 = shl i16 %empty, 8
  %empty_447 = or i16 %empty_446, %empty_445
  %empty_448 = zext i1 %0 to i17
  %empty_449 = zext i16 %empty_447 to i17
  %empty_450 = shl i17 %empty_448, 16
  %empty_451 = or i17 %empty_450, %empty_449
  ret i17 %empty_451
}

define weak i24 @_ssdm_op_PartSelect.i24.i96.i32.i32(i96, i32, i32) nounwind readnone {
entry:
  %empty = call i96 @llvm.part.select.i96(i96 %0, i32 %1, i32 %2)
  %empty_452 = trunc i96 %empty to i24
  ret i24 %empty_452
}

define weak i16 @_ssdm_op_PartSelect.i16.i96.i32.i32(i96, i32, i32) nounwind readnone {
entry:
  %empty = call i96 @llvm.part.select.i96(i96 %0, i32 %1, i32 %2)
  %empty_453 = trunc i96 %empty to i16
  ret i16 %empty_453
}

define weak i8 @_ssdm_op_PartSelect.i8.i96.i32.i32(i96, i32, i32) nounwind readnone {
entry:
  %empty = call i96 @llvm.part.select.i96(i96 %0, i32 %1, i32 %2)
  %empty_454 = trunc i96 %empty to i8
  ret i8 %empty_454
}

define weak i37 @_ssdm_op_BitConcatenate.i37.i5.i22.i7.i3(i5, i22, i7, i3) nounwind readnone {
entry:
  %empty = zext i7 %2 to i10
  %empty_455 = zext i3 %3 to i10
  %empty_456 = shl i10 %empty, 3
  %empty_457 = or i10 %empty_456, %empty_455
  %empty_458 = zext i22 %1 to i32
  %empty_459 = zext i10 %empty_457 to i32
  %empty_460 = shl i32 %empty_458, 10
  %empty_461 = or i32 %empty_460, %empty_459
  %empty_462 = zext i5 %0 to i37
  %empty_463 = zext i32 %empty_461 to i37
  %empty_464 = shl i37 %empty_462, 32
  %empty_465 = or i37 %empty_464, %empty_463
  ret i37 %empty_465
}

define weak i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_466 = trunc i8 %empty to i4
  ret i4 %empty_466
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14
  %empty_467 = zext i6 %1 to i14
  %empty_468 = shl i14 %empty, 6
  %empty_469 = or i14 %empty_468, %empty_467
  ret i14 %empty_469
}

define weak i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_470 = trunc i32 %empty to i16
  ret i16 %empty_470
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_471 = zext i3 %1 to i6
  %empty_472 = shl i6 %empty, 3
  %empty_473 = or i6 %empty_472, %empty_471
  ret i6 %empty_473
}

define weak i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_474 = trunc i8 %empty to i5
  ret i5 %empty_474
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8
  %empty_475 = zext i3 %1 to i8
  %empty_476 = shl i8 %empty, 3
  %empty_477 = or i8 %empty_476, %empty_475
  ret i8 %empty_477
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11
  %empty_478 = zext i3 %1 to i11
  %empty_479 = shl i11 %empty, 3
  %empty_480 = or i11 %empty_479, %empty_478
  ret i11 %empty_480
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_481 = zext i3 %1 to i7
  %empty_482 = shl i7 %empty, 3
  %empty_483 = or i7 %empty_482, %empty_481
  ret i7 %empty_483
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2, i6) nounwind readnone {
entry:
  %empty = zext i2 %0 to i8
  %empty_484 = zext i6 %1 to i8
  %empty_485 = shl i8 %empty, 6
  %empty_486 = or i8 %empty_485, %empty_484
  ret i8 %empty_486
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone {
entry:
  %empty = zext i28 %0 to i32
  %empty_487 = zext i4 %1 to i32
  %empty_488 = shl i32 %empty, 4
  %empty_489 = or i32 %empty_488, %empty_487
  ret i32 %empty_489
}

define weak i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_490 = trunc i32 %empty to i4
  ret i4 %empty_490
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_491 = trunc i32 %empty to i24
  ret i24 %empty_491
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone {
entry:
  %empty = zext i24 %0 to i32
  %empty_492 = zext i8 %1 to i32
  %empty_493 = shl i32 %empty, 8
  %empty_494 = or i32 %empty_493, %empty_492
  ret i32 %empty_494
}

define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_495 = trunc i32 %empty to i26
  ret i26 %empty_495
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i26.i6(i26, i6) nounwind readnone {
entry:
  %empty = zext i26 %0 to i32
  %empty_496 = zext i6 %1 to i32
  %empty_497 = shl i32 %empty, 6
  %empty_498 = or i32 %empty_497, %empty_496
  ret i32 %empty_498
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13, i19) nounwind readnone {
entry:
  %empty = zext i13 %0 to i32
  %empty_499 = zext i19 %1 to i32
  %empty_500 = shl i32 %empty, 19
  %empty_501 = or i32 %empty_500, %empty_499
  ret i32 %empty_501
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone {
entry:
  %empty = zext i16 %0 to i32
  %empty_502 = zext i16 %1 to i32
  %empty_503 = shl i32 %empty, 16
  %empty_504 = or i32 %empty_503, %empty_502
  ret i32 %empty_504
}

define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_505 = trunc i32 %empty to i19
  ret i19 %empty_505
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21, i11) nounwind readnone {
entry:
  %empty = zext i21 %0 to i32
  %empty_506 = zext i11 %1 to i32
  %empty_507 = shl i32 %empty, 11
  %empty_508 = or i32 %empty_507, %empty_506
  ret i32 %empty_508
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18, i14) nounwind readnone {
entry:
  %empty = zext i18 %0 to i32
  %empty_509 = zext i14 %1 to i32
  %empty_510 = shl i32 %empty, 14
  %empty_511 = or i32 %empty_510, %empty_509
  ret i32 %empty_511
}

define weak i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_512 = trunc i32 %empty to i11
  ret i11 %empty_512
}

define weak i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_513 = trunc i32 %empty to i14
  ret i14 %empty_513
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7, i25) nounwind readnone {
entry:
  %empty = zext i7 %0 to i32
  %empty_514 = zext i25 %1 to i32
  %empty_515 = shl i32 %empty, 25
  %empty_516 = or i32 %empty_515, %empty_514
  ret i32 %empty_516
}

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_517 = trunc i32 %empty to i25
  ret i25 %empty_517
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i24(i8, i24) nounwind readnone {
entry:
  %empty = zext i8 %0 to i32
  %empty_518 = zext i24 %1 to i32
  %empty_519 = shl i32 %empty, 24
  %empty_520 = or i32 %empty_519, %empty_518
  ret i32 %empty_520
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13
  %empty_521 = zext i6 %1 to i13
  %empty_522 = shl i13 %empty, 6
  %empty_523 = or i13 %empty_522, %empty_521
  ret i13 %empty_523
}

define weak i7 @_ssdm_op_PartSelect.i7.i45.i32.i32(i45, i32, i32) nounwind readnone {
entry:
  %empty = call i45 @llvm.part.select.i45(i45 %0, i32 %1, i32 %2)
  %empty_524 = trunc i45 %empty to i7
  ret i7 %empty_524
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_525 = zext i4 %1 to i8
  %empty_526 = shl i8 %empty, 4
  %empty_527 = or i8 %empty_526, %empty_525
  ret i8 %empty_527
}

define weak i5 @_ssdm_op_PartSelect.i5.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_528 = trunc i64 %empty to i5
  ret i5 %empty_528
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2, i7) nounwind readnone {
entry:
  %empty = zext i2 %0 to i9
  %empty_529 = zext i7 %1 to i9
  %empty_530 = shl i9 %empty, 7
  %empty_531 = or i9 %empty_530, %empty_529
  ret i9 %empty_531
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i13.i3(i13, i3) nounwind readnone {
entry:
  %empty = zext i13 %0 to i16
  %empty_532 = zext i3 %1 to i16
  %empty_533 = shl i16 %empty, 3
  %empty_534 = or i16 %empty_533, %empty_532
  ret i16 %empty_534
}

define weak i13 @_ssdm_op_PartSelect.i13.i48.i32.i32(i48, i32, i32) nounwind readnone {
entry:
  %empty = call i48 @llvm.part.select.i48(i48 %0, i32 %1, i32 %2)
  %empty_535 = trunc i48 %empty to i13
  ret i13 %empty_535
}

define weak i1 @_ssdm_op_Read.ap_none.i1(i1) {
entry:
  ret i1 %0
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i248P(i248*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i248(i248* %0)
  ret i1 %empty
}

define weak i248 @_ssdm_op_Read.ap_fifo.volatile.i248P(i248*) {
entry:
  %empty = call i248 @_autotb_FifoRead_i248(i248* %0)
  ret i248 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i64P(i64*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i64(i64* %0)
  ret i1 %empty
}

define weak i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64*) {
entry:
  %empty = call i64 @_autotb_FifoRead_i64(i64* %0)
  ret i64 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i64P.i112P.i8P.i1P(i64*, i112*, i8*, i1*, i64, i112, i8, i1) {
entry:
  store i64 %4, i64* %0
  store i112 %5, i112* %1
  store i8 %6, i8* %2
  store i1 %7, i1* %3
  ret void
}

define weak i1 @_ssdm_op_NbWriteReq.ap_fifo.i64P(i64*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanWrite_i64(i64* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_NbWriteReq.ap_fifo.i248P(i248*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanWrite_i248(i248* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i256P(i256*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i256(i256* %0)
  ret i1 %empty
}

define weak i256 @_ssdm_op_Read.ap_fifo.volatile.i256P(i256*) {
entry:
  %empty = call i256 @_autotb_FifoRead_i256(i256* %0)
  ret i256 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64*, i64) {
entry:
  %empty = call i64 @_autotb_FifoWrite_i64(i64* %0, i64 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i248P(i248*, i248) {
entry:
  %empty = call i248 @_autotb_FifoWrite_i248(i248* %0, i248 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i256P(i256*, i256) {
entry:
  %empty = call i256 @_autotb_FifoWrite_i256(i256* %0, i256 %1)
  ret void
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i128P(i128*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i128(i128* %0)
  ret i1 %empty
}

define weak i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128*) {
entry:
  %empty = call i128 @_autotb_FifoRead_i128(i128* %0)
  ret i128 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i16P(i16*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i16(i16* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_NbReadReq.axis.i64P(i64*, i32) {
entry:
  ret i1 true
}

define weak i16 @_ssdm_op_Read.ap_fifo.volatile.i16P(i16*) {
entry:
  %empty = call i16 @_autotb_FifoRead_i16(i16* %0)
  ret i16 %empty
}

define weak i64 @_ssdm_op_Read.axis.volatile.i64P(i64*) {
entry:
  %empty = load i64* %0
  ret i64 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i48P(i48*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i48(i48* %0)
  ret i1 %empty
}

define weak i48 @_ssdm_op_Read.ap_fifo.volatile.i48P(i48*) {
entry:
  %empty = call i48 @_autotb_FifoRead_i48(i48* %0)
  ret i48 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i48P(i48*, i48) {
entry:
  store i48 %1, i48* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1)
  ret void
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i66P(i66*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i66(i66* %0)
  ret i1 %empty
}

define weak i66 @_ssdm_op_Read.ap_fifo.volatile.i66P(i66*) {
entry:
  %empty = call i66 @_autotb_FifoRead_i66(i66* %0)
  ret i66 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i64P(i64*, i64) {
entry:
  store i64 %1, i64* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128*, i128) {
entry:
  %empty = call i128 @_autotb_FifoWrite_i128(i128* %0, i128 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i48P(i48*, i48) {
entry:
  %empty = call i48 @_autotb_FifoWrite_i48(i48* %0, i48 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i66P(i66*, i66) {
entry:
  %empty = call i66 @_autotb_FifoWrite_i66(i66* %0, i66 %1)
  ret void
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i12P(i12*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i12(i12* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_NbReadReq.axis.i512P(i512*, i32) {
entry:
  ret i1 true
}

define weak i12 @_ssdm_op_Read.ap_fifo.volatile.i12P(i12*) {
entry:
  %empty = call i12 @_autotb_FifoRead_i12(i12* %0)
  ret i12 %empty
}

define weak i512 @_ssdm_op_Read.axis.volatile.i512P(i512*) {
entry:
  %empty = load i512* %0
  ret i512 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1*, i1) {
entry:
  %empty = call i1 @_autotb_FifoWrite_i1(i1* %0, i1 %1)
  ret void
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i45P(i45*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i45(i45* %0)
  ret i1 %empty
}

define weak i45 @_ssdm_op_Read.ap_fifo.volatile.i45P(i45*) {
entry:
  %empty = call i45 @_autotb_FifoRead_i45(i45* %0)
  ret i45 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i40P(i40*, i40) {
entry:
  store i40 %1, i40* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i12P(i12*, i12) {
entry:
  %empty = call i12 @_autotb_FifoWrite_i12(i12* %0, i12 %1)
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i512P(i512*, i512) {
entry:
  store i512 %1, i512* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i45P(i45*, i45) {
entry:
  %empty = call i45 @_autotb_FifoWrite_i45(i45* %0, i45 %1)
  ret void
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i1P(i1*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i1(i1* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_NbWriteReq.ap_fifo.i2P(i2*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanWrite_i2(i2* %0)
  ret i1 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i2P(i2*, i2) {
entry:
  %empty = call i2 @_autotb_FifoWrite_i2(i2* %0, i2 %1)
  ret void
}

define weak i2 @_ssdm_op_Read.ap_fifo.volatile.i2P(i2*) {
entry:
  %empty = call i2 @_autotb_FifoRead_i2(i2* %0)
  ret i2 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i2P(i2*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i2(i2* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1*) {
entry:
  %empty = call i1 @_autotb_FifoRead_i1(i1* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i57P(i57*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i57(i57* %0)
  ret i1 %empty
}

define weak i57 @_ssdm_op_Read.ap_fifo.volatile.i57P(i57*) {
entry:
  %empty = call i57 @_autotb_FifoRead_i57(i57* %0)
  ret i57 %empty
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i8P(i8*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i8(i8* %0)
  ret i1 %empty
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i512P(i512*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i512(i512* %0)
  ret i1 %empty
}

define weak i512 @_ssdm_op_Read.ap_fifo.volatile.i512P(i512*) {
entry:
  %empty = call i512 @_autotb_FifoRead_i512(i512* %0)
  ret i512 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i57P(i57*, i57) {
entry:
  %empty = call i57 @_autotb_FifoWrite_i57(i57* %0, i57 %1)
  ret void
}

define weak i1 @_ssdm_op_NbReadReq.axis.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i130P(i130*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i130(i130* %0)
  ret i1 %empty
}

define weak i130 @_ssdm_op_Read.ap_fifo.volatile.i130P(i130*) {
entry:
  %empty = call i130 @_autotb_FifoRead_i130(i130* %0)
  ret i130 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i512P(i512*, i512) {
entry:
  %empty = call i512 @_autotb_FifoWrite_i512(i512* %0, i512 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i130P(i130*, i130) {
entry:
  %empty = call i130 @_autotb_FifoWrite_i130(i130* %0, i130 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i32(i32* %0)
  ret i1 %empty
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i96P(i96*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i96(i96* %0)
  ret i1 %empty
}

define weak i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96*) {
entry:
  %empty = call i96 @_autotb_FifoRead_i96(i96* %0)
  ret i96 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96*, i96) {
entry:
  %empty = call i96 @_autotb_FifoWrite_i96(i96* %0, i96 %1)
  ret void
}

define weak i1 @_ssdm_op_NbReadReq.axis.i64P.i112P.i8P.i1P(i64*, i112*, i8*, i1*, i32) {
entry:
  ret i1 true
}

define weak { i64, i112, i8, i1 } @_ssdm_op_Read.axis.volatile.i64P.i112P.i8P.i1P(i64*, i112*, i8*, i1*) {
entry:
  %empty = load i64* %0
  %empty_536 = load i112* %1
  %empty_537 = load i8* %2
  %empty_538 = load i1* %3
  %mrv_0 = insertvalue { i64, i112, i8, i1 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i112, i8, i1 } %mrv_0, i112 %empty_536, 1
  %mrv2 = insertvalue { i64, i112, i8, i1 } %mrv1, i8 %empty_537, 2
  %mrv3 = insertvalue { i64, i112, i8, i1 } %mrv2, i1 %empty_538, 3
  ret { i64, i112, i8, i1 } %mrv3
}

define weak i1 @_ssdm_op_BitSelect.i1.i256.i32(i256, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i256
  %empty_539 = shl i256 1, %empty
  %empty_540 = and i256 %0, %empty_539
  %empty_541 = icmp ne i256 %empty_540, 0
  ret i1 %empty_541
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_542 = shl i2 1, %empty
  %empty_543 = and i2 %0, %empty_542
  %empty_544 = icmp ne i2 %empty_543, 0
  ret i1 %empty_544
}

define weak i1 @_ssdm_op_BitSelect.i1.i128.i32(i128, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i128
  %empty_545 = shl i128 1, %empty
  %empty_546 = and i128 %0, %empty_545
  %empty_547 = icmp ne i128 %empty_546, 0
  ret i1 %empty_547
}

define weak i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_548 = trunc i16 %empty to i13
  ret i13 %empty_548
}

define weak i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_549 = trunc i12 %empty to i9
  ret i9 %empty_549
}

define weak i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_550 = trunc i13 %empty to i10
  ret i10 %empty_550
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_551 = shl i64 1, %empty
  %empty_552 = and i64 %0, %empty_551
  %empty_553 = icmp ne i64 %empty_552, 0
  ret i1 %empty_553
}

define weak i1 @_ssdm_op_BitSelect.i1.i57.i32(i57, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i57
  %empty_554 = shl i57 1, %empty
  %empty_555 = and i57 %0, %empty_554
  %empty_556 = icmp ne i57 %empty_555, 0
  ret i1 %empty_556
}

define weak i1 @_ssdm_op_BitSelect.i1.i130.i32(i130, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i130
  %empty_557 = shl i130 1, %empty
  %empty_558 = and i130 %0, %empty_557
  %empty_559 = icmp ne i130 %empty_558, 0
  ret i1 %empty_559
}

define weak i1 @_ssdm_op_BitSelect.i1.i66.i32(i66, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i66
  %empty_560 = shl i66 1, %empty
  %empty_561 = and i66 %0, %empty_560
  %empty_562 = icmp ne i66 %empty_561, 0
  ret i1 %empty_562
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_563 = shl i8 1, %empty
  %empty_564 = and i8 %0, %empty_563
  %empty_565 = icmp ne i8 %empty_564, 0
  ret i1 %empty_565
}

define weak i5 @_ssdm_op_PartSelect.i5.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_566 = trunc i16 %empty to i5
  ret i5 %empty_566
}

declare i1 @_autotb_FifoCanRead_i248(i248*)

declare i248 @_autotb_FifoRead_i248(i248*)

declare i1 @_autotb_FifoCanRead_i64(i64*)

declare i64 @_autotb_FifoRead_i64(i64*)

declare i1 @_autotb_FifoCanWrite_i64(i64*)

declare i1 @_autotb_FifoCanWrite_i248(i248*)

declare i1 @_autotb_FifoCanRead_i256(i256*)

declare i256 @_autotb_FifoRead_i256(i256*)

declare i64 @_autotb_FifoWrite_i64(i64*, i64)

declare i248 @_autotb_FifoWrite_i248(i248*, i248)

declare i256 @_autotb_FifoWrite_i256(i256*, i256)

declare i1 @_autotb_FifoCanRead_i128(i128*)

declare i128 @_autotb_FifoRead_i128(i128*)

declare i1 @_autotb_FifoCanRead_i16(i16*)

declare i16 @_autotb_FifoRead_i16(i16*)

declare i1 @_autotb_FifoCanRead_i48(i48*)

declare i48 @_autotb_FifoRead_i48(i48*)

declare i16 @_autotb_FifoWrite_i16(i16*, i16)

declare i1 @_autotb_FifoCanRead_i66(i66*)

declare i66 @_autotb_FifoRead_i66(i66*)

declare i128 @_autotb_FifoWrite_i128(i128*, i128)

declare i48 @_autotb_FifoWrite_i48(i48*, i48)

declare i66 @_autotb_FifoWrite_i66(i66*, i66)

declare i1 @_autotb_FifoCanRead_i12(i12*)

declare i12 @_autotb_FifoRead_i12(i12*)

declare i1 @_autotb_FifoWrite_i1(i1*, i1)

declare i1 @_autotb_FifoCanRead_i45(i45*)

declare i45 @_autotb_FifoRead_i45(i45*)

declare i12 @_autotb_FifoWrite_i12(i12*, i12)

declare i45 @_autotb_FifoWrite_i45(i45*, i45)

declare i1 @_autotb_FifoCanRead_i1(i1*)

declare i1 @_autotb_FifoCanWrite_i2(i2*)

declare i2 @_autotb_FifoWrite_i2(i2*, i2)

declare i2 @_autotb_FifoRead_i2(i2*)

declare i1 @_autotb_FifoCanRead_i2(i2*)

declare i1 @_autotb_FifoRead_i1(i1*)

declare i1 @_autotb_FifoCanRead_i57(i57*)

declare i57 @_autotb_FifoRead_i57(i57*)

declare i1 @_autotb_FifoCanRead_i8(i8*)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i1 @_autotb_FifoCanRead_i512(i512*)

declare i512 @_autotb_FifoRead_i512(i512*)

declare i57 @_autotb_FifoWrite_i57(i57*, i57)

declare i1 @_autotb_FifoCanRead_i130(i130*)

declare i130 @_autotb_FifoRead_i130(i130*)

declare i512 @_autotb_FifoWrite_i512(i512*, i512)

declare i130 @_autotb_FifoWrite_i130(i130*, i130)

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i1 @_autotb_FifoCanRead_i32(i32*)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i1 @_autotb_FifoCanRead_i96(i96*)

declare i96 @_autotb_FifoRead_i96(i96*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i96 @_autotb_FifoWrite_i96(i96*, i96)

declare i256 @llvm.part.select.i256(i256, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i124 @llvm.part.select.i124(i124, i32, i32) nounwind readnone

declare i248 @llvm.part.select.i248(i248, i32, i32) nounwind readnone

declare i248 @llvm.part.set.i248.i25(i248, i25, i32, i32) nounwind readnone

declare i57 @llvm.part.select.i57(i57, i32, i32) nounwind readnone

declare i96 @llvm.part.select.i96(i96, i32, i32) nounwind readnone

declare i45 @llvm.part.select.i45(i45, i32, i32) nounwind readnone

declare i48 @llvm.part.select.i48(i48, i32, i32) nounwind readnone

declare i130 @llvm.part.select.i130(i130, i32, i32) nounwind readnone

declare i57 @llvm.part.set.i57.i56(i57, i56, i32, i32) nounwind readnone

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare i124 @_ssdm_op_PartSelect.i124.i256.i32.i32(i256, i32, i32) nounwind readnone

declare i128 @_ssdm_op_PartSelect.i128.i256.i32.i32(i256, i32, i32) nounwind readnone

declare i124 @_ssdm_op_PartSelect.i124.i128.i32.i32(i128, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i64 @_ssdm_op_PartSelect.i64.i512.i32.i32(i512, i32, i32) nounwind readnone

declare i10 @_ssdm_op_PartSelect.i10.i14.i32.i32(i14, i32, i32) nounwind readnone

define weak i10 @_ssdm_op_BitConcatenate.i10.i4.i6(i4, i6) nounwind readnone {
entry:
  %empty = zext i4 %0 to i10
  %empty_567 = zext i6 %1 to i10
  %empty_568 = shl i10 %empty, 6
  %empty_569 = or i10 %empty_568, %empty_567
  ret i10 %empty_569
}

define weak i10 @_ssdm_op_PartSelect.i10.i124.i32.i32(i124, i32, i32) nounwind readnone {
entry:
  %empty = call i124 @llvm.part.select.i124(i124 %0, i32 %1, i32 %2)
  %empty_570 = trunc i124 %empty to i10
  ret i10 %empty_570
}

declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i33 @_ssdm_op_PartSelect.i33.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_571 = trunc i64 %empty to i33
  ret i33 %empty_571
}

declare i108 @_ssdm_op_PartSelect.i108.i112.i32.i32(i112, i32, i32) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i9.i32.i32(i9, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSelect.i3.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2)
  %empty_572 = trunc i9 %empty to i3
  ret i3 %empty_572
}

declare i5 @_ssdm_op_PartSelect.i5.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_573 = trunc i8 %empty to i2
  ret i2 %empty_573
}

declare i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i57.i32.i32(i57, i32, i32) nounwind readnone

declare i72 @_ssdm_op_PartSelect.i72.i128.i32.i32(i128, i32, i32) nounwind readnone

declare i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i96 @_ssdm_op_PartSelect.i96.i130.i32.i32(i130, i32, i32) nounwind readnone

declare i128 @_ssdm_op_PartSelect.i128.i130.i32.i32(i130, i32, i32) nounwind readnone

declare i64 @_ssdm_op_PartSelect.i64.i130.i32.i32(i130, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i130.i32.i32(i130, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i45.i32.i32(i45, i32, i32) nounwind readnone

declare i64 @_ssdm_op_PartSelect.i64.i66.i32.i32(i66, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i512.i32.i32(i512, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i48.i32.i32(i48, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_574 = shl i6 1, %empty
  %empty_575 = and i6 %0, %empty_574
  %empty_576 = icmp ne i6 %empty_575, 0
  ret i1 %empty_576
}

declare i9 @llvm.part.select.i9(i9, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [14 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 13, i32 1}
!7 = metadata !{metadata !8, metadata !13}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"hashTableMemWrCmd.V.address.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 1}
!13 = metadata !{i32 32, i32 39, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"hashTableMemWrCmd.V.count.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!16 = metadata !{metadata !17, metadata !20}
!17 = metadata !{i32 0, i32 31, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"hashTableMemRdCmd.V.address.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!20 = metadata !{i32 32, i32 39, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"hashTableMemRdCmd.V.count.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!23 = metadata !{metadata !24, metadata !27}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"flashValueStoreMemWrCmd.V.address.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!27 = metadata !{i32 32, i32 44, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"flashValueStoreMemWrCmd.V.count.V", metadata !11, metadata !"uint13", i32 0, i32 12}
!30 = metadata !{metadata !31, metadata !34}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"flashValueStoreMemRdCmd.V.address.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!34 = metadata !{i32 32, i32 44, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"flashValueStoreMemRdCmd.V.count.V", metadata !11, metadata !"uint13", i32 0, i32 12}
!37 = metadata !{metadata !38, metadata !41}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"dramValueStoreMemWrCmd.V.address.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!41 = metadata !{i32 32, i32 39, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"dramValueStoreMemWrCmd.V.count.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!44 = metadata !{metadata !45, metadata !48}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"dramValueStoreMemRdCmd.V.address.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!48 = metadata !{i32 32, i32 39, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"dramValueStoreMemRdCmd.V.count.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 63, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"inData.V.data.V", metadata !11, metadata !"uint64", i32 0, i32 63}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 111, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"inData.V.user.V", metadata !11, metadata !"uint112", i32 0, i32 111}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 7, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"inData.V.keep.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 0, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"inData.V.last.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 63, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"outData.V.data.V", metadata !11, metadata !"uint64", i32 0, i32 63}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 111, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"outData.V.user.V", metadata !11, metadata !"uint112", i32 0, i32 111}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 7, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"outData.V.keep.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 0, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"outData.V.last.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 511, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"dramValueStoreMemRdData.V.V", metadata !11, metadata !"uint512", i32 0, i32 511}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 511, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"dramValueStoreMemWrData.V.V", metadata !11, metadata !"uint512", i32 0, i32 511}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 63, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"flashValueStoreMemRdData.V.V", metadata !11, metadata !"uint64", i32 0, i32 63}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 63, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"flashValueStoreMemWrData.V.V", metadata !11, metadata !"uint64", i32 0, i32 63}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 511, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"hashTableMemRdData.V.V", metadata !11, metadata !"uint512", i32 0, i32 511}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 511, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"hashTableMemWrData.V.V", metadata !11, metadata !"uint512", i32 0, i32 511}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 31, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"addressReturnOut.V.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 31, metadata !113}
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !"addressAssignDramIn.V.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 31, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"addressAssignFlashIn.V.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 0, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"flushReq.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 0, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"flushAck.V", metadata !127, metadata !"uint1", i32 0, i32 0}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 0, i32 0}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 0, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"flushDone.V", metadata !11, metadata !"uint1", i32 0, i32 0}
