<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:06389a24-a77a-450d-bc88-bccec0aae7d8(org.iets3.core.expr.lambda.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="hwgx" ref="r:fd2980c8-676c-4b19-b524-18c70e02f8b7(com.mbeddr.core.base.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472833" name="isPrivate" index="13i0is" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="13h7C7" id="6zmBjqUkwNw">
    <property role="3GE5qa" value="lambda" />
    <ref role="13h7C2" to="zzzn:6zmBjqUkws6" resolve="LambdaExpression" />
    <node concept="13hLZK" id="6zmBjqUkwNx" role="13h7CW">
      <node concept="3clFbS" id="6zmBjqUkwNy" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6zmBjqUkwNz" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="6zmBjqUkwN$" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUkwNB" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUkwO3" role="3cqZAp">
          <node concept="3cpWs3" id="$yb$20nbCQ" role="3clFbG">
            <node concept="Xl_RD" id="$yb$20nbCT" role="3uHU7w">
              <property role="Xl_RC" value="|" />
            </node>
            <node concept="3cpWs3" id="$yb$20naHa" role="3uHU7B">
              <node concept="3cpWs3" id="$yb$20nan$" role="3uHU7B">
                <node concept="3cpWs3" id="$yb$20n3gA" role="3uHU7B">
                  <node concept="Xl_RD" id="6zmBjqUkwO2" role="3uHU7B">
                    <property role="Xl_RC" value="|" />
                  </node>
                  <node concept="2OqwBi" id="$yb$20n41S" role="3uHU7w">
                    <node concept="2OqwBi" id="$yb$20n3jh" role="2Oq$k0">
                      <node concept="13iPFW" id="$yb$20n3gH" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="$yb$20n3nY" role="2OqNvi">
                        <ref role="3TtcxE" to="zzzn:6zmBjqUkws7" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="$yb$20n9UN" role="2OqNvi">
                      <node concept="1bVj0M" id="$yb$20n9UP" role="23t8la">
                        <node concept="3clFbS" id="$yb$20n9UQ" role="1bW5cS">
                          <node concept="3clFbF" id="$yb$20n9Xm" role="3cqZAp">
                            <node concept="2OqwBi" id="$yb$20na2q" role="3clFbG">
                              <node concept="37vLTw" id="$yb$20n9Xl" role="2Oq$k0">
                                <ref role="3cqZAo" node="$yb$20n9UR" resolve="it" />
                              </node>
                              <node concept="2qgKlT" id="$yb$20nagT" role="2OqNvi">
                                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="$yb$20n9UR" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="$yb$20n9US" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="$yb$20nanB" role="3uHU7w">
                  <property role="Xl_RC" value=" =&gt; " />
                </node>
              </node>
              <node concept="2OqwBi" id="$yb$20nblW" role="3uHU7w">
                <node concept="2OqwBi" id="$yb$20naPl" role="2Oq$k0">
                  <node concept="13iPFW" id="$yb$20naKA" role="2Oq$k0" />
                  <node concept="3TrEf2" id="$yb$20nbdx" role="2OqNvi">
                    <ref role="3Tt5mk" to="zzzn:6zmBjqUkwH3" />
                  </node>
                </node>
                <node concept="2qgKlT" id="$yb$20nbwN" role="2OqNvi">
                  <ref role="37wK5l" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6zmBjqUkwNC" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6zmBjqUkwND" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3Tm1VV" id="6zmBjqUkwNE" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUkwNH" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUkwNK" role="3cqZAp">
          <node concept="3clFbT" id="6zmBjqUkwNJ" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="6zmBjqUkwNI" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6zmBjqUkMBD" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getUniquelyNamedElements" />
      <ref role="13i0hy" to="hwgx:4qSf1u1TRfj" resolve="getUniquelyNamedElements" />
      <node concept="3Tm1VV" id="6zmBjqUkMBE" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUkMBI" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUkMCd" role="3cqZAp">
          <node concept="2OqwBi" id="6zmBjqUkMEE" role="3clFbG">
            <node concept="13iPFW" id="6zmBjqUkMCc" role="2Oq$k0" />
            <node concept="3Tsc0h" id="6zmBjqUkMJi" role="2OqNvi">
              <ref role="3TtcxE" to="zzzn:6zmBjqUkws7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6zmBjqUkMBJ" role="3clF45">
        <node concept="3Tqbb2" id="6zmBjqUkMBK" role="A3Ik2">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6zmBjqUkS0K">
    <property role="3GE5qa" value="lambda" />
    <ref role="13h7C2" to="zzzn:6zmBjqUkHal" resolve="LambdaArgRef" />
    <node concept="13hLZK" id="6zmBjqUkS0L" role="13h7CW">
      <node concept="3clFbS" id="6zmBjqUkS0M" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6zmBjqUkS0N" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="6zmBjqUkS0O" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUkS0R" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUkS1j" role="3cqZAp">
          <node concept="2OqwBi" id="6zmBjqUkSh$" role="3clFbG">
            <node concept="2OqwBi" id="6zmBjqUkS3h" role="2Oq$k0">
              <node concept="13iPFW" id="6zmBjqUkS1i" role="2Oq$k0" />
              <node concept="3TrEf2" id="6zmBjqUkS6V" role="2OqNvi">
                <ref role="3Tt5mk" to="zzzn:6zmBjqUkHam" />
              </node>
            </node>
            <node concept="3TrcHB" id="6zmBjqUkSox" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6zmBjqUkS0S" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6zmBjqUkS0T" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3Tm1VV" id="6zmBjqUkS0U" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUkS0X" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUkS10" role="3cqZAp">
          <node concept="3clFbT" id="6zmBjqUkS0Z" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="6zmBjqUkS0Y" role="3clF45" />
    </node>
    <node concept="13i0hz" id="22hm_0zvy$t" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="target" />
      <ref role="13i0hy" to="pbu6:6rGLT0TevFd" resolve="target" />
      <node concept="3Tm1VV" id="22hm_0zvy$u" role="1B3o_S" />
      <node concept="3clFbS" id="22hm_0zvy$x" role="3clF47">
        <node concept="3clFbF" id="22hm_0zvyAw" role="3cqZAp">
          <node concept="2OqwBi" id="22hm_0zvyCD" role="3clFbG">
            <node concept="13iPFW" id="22hm_0zvyAv" role="2Oq$k0" />
            <node concept="3TrEf2" id="22hm_0zvyHh" role="2OqNvi">
              <ref role="3Tt5mk" to="zzzn:6zmBjqUkHam" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="22hm_0zvy$y" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="6zmBjqUl6nM">
    <property role="3GE5qa" value="function" />
    <ref role="13h7C2" to="zzzn:6zmBjqUjGYQ" resolve="FunctionType" />
    <node concept="13hLZK" id="6zmBjqUl6nN" role="13h7CW">
      <node concept="3clFbS" id="6zmBjqUl6nO" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6zmBjqUl6nP" role="13h7CS">
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="6zmBjqUl6oX" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUl6rM" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUl6rR" role="3cqZAp">
          <node concept="3cpWs3" id="6zmBjqUl7vP" role="3clFbG">
            <node concept="Xl_RD" id="6zmBjqUl7vS" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="6zmBjqUl7en" role="3uHU7B">
              <node concept="3cpWs3" id="6zmBjqUl77X" role="3uHU7B">
                <node concept="3cpWs3" id="6zmBjqUl6xW" role="3uHU7B">
                  <node concept="Xl_RD" id="6zmBjqUl6tb" role="3uHU7B">
                    <property role="Xl_RC" value="(" />
                  </node>
                  <node concept="2OqwBi" id="6zmBjqUl6$I" role="3uHU7w">
                    <node concept="13iPFW" id="6zmBjqUl6ya" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6zmBjqUl6Dr" role="2OqNvi">
                      <ref role="3TtcxE" to="zzzn:6zmBjqUjGYR" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="6zmBjqUl780" role="3uHU7w">
                  <property role="Xl_RC" value="=&gt;" />
                </node>
              </node>
              <node concept="2OqwBi" id="6zmBjqUl7hC" role="3uHU7w">
                <node concept="13iPFW" id="6zmBjqUl7eF" role="2Oq$k0" />
                <node concept="3TrEf2" id="6zmBjqUl7nK" role="2OqNvi">
                  <ref role="3Tt5mk" to="zzzn:6zmBjqUjGYT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6zmBjqUl6rN" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="6zmBjqUlsLI">
    <property role="3GE5qa" value="function" />
    <ref role="13h7C2" to="zzzn:6zmBjqUln66" resolve="ExecOp" />
    <node concept="13hLZK" id="6zmBjqUlsLJ" role="13h7CW">
      <node concept="3clFbS" id="6zmBjqUlsLK" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6zmBjqUlsLO" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderReadable" />
      <ref role="13i0hy" to="pbu6:6kR0qIbI2yi" resolve="renderReadable" />
      <node concept="3Tm1VV" id="6zmBjqUlsLP" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUlsLS" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUlsLZ" role="3cqZAp">
          <node concept="Xl_RD" id="6zmBjqUlsLY" role="3clFbG">
            <property role="Xl_RC" value="exec" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6zmBjqUlsLT" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="6zmBjqUm7MC">
    <property role="3GE5qa" value="lambda" />
    <ref role="13h7C2" to="zzzn:6zmBjqUm7Mf" resolve="IPushDownLambdaArgType" />
    <node concept="13i0hz" id="6zmBjqUm7MF" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="requiredType" />
      <node concept="3Tm1VV" id="6zmBjqUm7MG" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUm7MH" role="3clF47" />
      <node concept="3Tqbb2" id="6zmBjqUm7MN" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="6zmBjqUm7MD" role="13h7CW">
      <node concept="3clFbS" id="6zmBjqUm7ME" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6zmBjqUm7Om">
    <property role="3GE5qa" value="lambda" />
    <ref role="13h7C2" to="zzzn:6zmBjqUm7MQ" resolve="ShortLambdaExpression" />
    <node concept="13i0hz" id="6zmBjqUm7Op" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="6zmBjqUm7Oq" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUm7Or" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUm7Os" role="3cqZAp">
          <node concept="Xl_RD" id="6zmBjqUm7Ot" role="3clFbG">
            <property role="Xl_RC" value="lambda" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6zmBjqUm7Ou" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6zmBjqUm7Ov" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3Tm1VV" id="6zmBjqUm7Ow" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUm7Ox" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUm7Oy" role="3cqZAp">
          <node concept="3clFbT" id="6zmBjqUm7Oz" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="6zmBjqUm7O$" role="3clF45" />
    </node>
    <node concept="13i0hz" id="$yb$20fCkw" role="13h7CS">
      <property role="TrG5h" value="makeExplicitLambda" />
      <node concept="37vLTG" id="22hm_0zJz8c" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="3uibUv" id="22hm_0zJznV" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="3Tm1VV" id="$yb$20fCkx" role="1B3o_S" />
      <node concept="3clFbS" id="$yb$20fCky" role="3clF47">
        <node concept="3cpWs8" id="49WTic8ey5C" role="3cqZAp">
          <node concept="3cpWsn" id="49WTic8ey5D" role="3cpWs9">
            <property role="TrG5h" value="le" />
            <node concept="3Tqbb2" id="49WTic8ey5A" role="1tU5fm">
              <ref role="ehGHo" to="zzzn:6zmBjqUkws6" resolve="LambdaExpression" />
            </node>
            <node concept="2ShNRf" id="49WTic8ey5E" role="33vP2m">
              <node concept="3zrR0B" id="49WTic8ey5F" role="2ShVmc">
                <node concept="3Tqbb2" id="49WTic8ey5G" role="3zrR0E">
                  <ref role="ehGHo" to="zzzn:6zmBjqUkws6" resolve="LambdaExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="49WTic8eygX" role="3cqZAp">
          <node concept="37vLTI" id="49WTic8eytP" role="3clFbG">
            <node concept="2OqwBi" id="49WTic8eyDZ" role="37vLTx">
              <node concept="2OqwBi" id="49WTic8eywd" role="2Oq$k0">
                <node concept="13iPFW" id="$yb$20fC$K" role="2Oq$k0" />
                <node concept="3TrEf2" id="49WTic8ey_4" role="2OqNvi">
                  <ref role="3Tt5mk" to="zzzn:6zmBjqUm7MR" />
                </node>
              </node>
              <node concept="1$rogu" id="49WTic8eyHc" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="49WTic8eyjf" role="37vLTJ">
              <node concept="37vLTw" id="49WTic8eygV" role="2Oq$k0">
                <ref role="3cqZAo" node="49WTic8ey5D" resolve="le" />
              </node>
              <node concept="3TrEf2" id="49WTic8eyo9" role="2OqNvi">
                <ref role="3Tt5mk" to="zzzn:6zmBjqUkwH3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="49WTic8eCUe" role="3cqZAp">
          <node concept="3cpWsn" id="49WTic8eCUf" role="3cpWs9">
            <property role="TrG5h" value="arg" />
            <node concept="3Tqbb2" id="49WTic8eCU6" role="1tU5fm">
              <ref role="ehGHo" to="zzzn:6zmBjqUkwse" resolve="LambdaArg" />
            </node>
            <node concept="2pJPEk" id="49WTic8eCUg" role="33vP2m">
              <node concept="2pJPED" id="49WTic8eCUh" role="2pJPEn">
                <ref role="2pJxaS" to="zzzn:6zmBjqUkwse" resolve="LambdaArg" />
                <node concept="2pJxcG" id="49WTic8eFv5" role="2pJxcM">
                  <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                  <node concept="Xl_RD" id="49WTic8eFEu" role="2pJxcZ">
                    <property role="Xl_RC" value="it" />
                  </node>
                </node>
                <node concept="2pIpSj" id="49WTic8eCUi" role="2pJxcM">
                  <ref role="2pIpSl" to="zzzn:6zmBjqUkwsc" />
                  <node concept="36biLy" id="49WTic8eCUj" role="2pJxcZ">
                    <node concept="2OqwBi" id="49WTic8eCUk" role="36biLW">
                      <node concept="2OqwBi" id="49WTic8eCUl" role="2Oq$k0">
                        <node concept="1PxgMI" id="49WTic8eCUm" role="2Oq$k0">
                          <ref role="1PxNhF" to="zzzn:6zmBjqUm7Mf" resolve="IPushDownLambdaArgType" />
                          <node concept="2OqwBi" id="49WTic8eCUn" role="1PxMeX">
                            <node concept="13iPFW" id="$yb$20fC$b" role="2Oq$k0" />
                            <node concept="1mfA1w" id="49WTic8eCUp" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="49WTic8eCUq" role="2OqNvi">
                          <ref role="37wK5l" node="6zmBjqUm7MF" resolve="requiredType" />
                        </node>
                      </node>
                      <node concept="1$rogu" id="49WTic8eCUr" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ovbtsiWelS" role="3cqZAp">
          <node concept="2OqwBi" id="6ovbtsiWex3" role="3clFbG">
            <node concept="2OqwBi" id="6ovbtsiWeoK" role="2Oq$k0">
              <node concept="37vLTw" id="6ovbtsiWelQ" role="2Oq$k0">
                <ref role="3cqZAo" node="22hm_0zJz8c" resolve="ctx" />
              </node>
              <node concept="liA8E" id="6ovbtsiWeti" role="2OqNvi">
                <ref role="37wK5l" to="2ahs:2X4$XGmeh8R" resolve="getEnvironment" />
              </node>
            </node>
            <node concept="liA8E" id="6ovbtsiWeI8" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="13iPFW" id="6ovbtsiWeKg" role="37wK5m" />
              <node concept="37vLTw" id="6ovbtsiWeO1" role="37wK5m">
                <ref role="3cqZAo" node="49WTic8eCUf" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="49WTic8eyK7" role="3cqZAp">
          <node concept="2OqwBi" id="49WTic8ezyo" role="3clFbG">
            <node concept="2OqwBi" id="49WTic8eyN7" role="2Oq$k0">
              <node concept="37vLTw" id="49WTic8eyK5" role="2Oq$k0">
                <ref role="3cqZAo" node="49WTic8ey5D" resolve="le" />
              </node>
              <node concept="3Tsc0h" id="49WTic8eyT3" role="2OqNvi">
                <ref role="3TtcxE" to="zzzn:6zmBjqUkws7" />
              </node>
            </node>
            <node concept="TSZUe" id="49WTic8e$IN" role="2OqNvi">
              <node concept="37vLTw" id="49WTic8eCUs" role="25WWJ7">
                <ref role="3cqZAo" node="49WTic8eCUf" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="49WTic8e_SQ" role="3cqZAp">
          <node concept="2OqwBi" id="49WTic8eAHO" role="3clFbG">
            <node concept="2OqwBi" id="49WTic8eAaa" role="2Oq$k0">
              <node concept="2OqwBi" id="49WTic8e_WW" role="2Oq$k0">
                <node concept="37vLTw" id="49WTic8e_SO" role="2Oq$k0">
                  <ref role="3cqZAo" node="49WTic8ey5D" resolve="le" />
                </node>
                <node concept="3TrEf2" id="49WTic8eA4v" role="2OqNvi">
                  <ref role="3Tt5mk" to="zzzn:6zmBjqUkwH3" />
                </node>
              </node>
              <node concept="2Rf3mk" id="49WTic8eAfG" role="2OqNvi">
                <node concept="1xMEDy" id="49WTic8eAfI" role="1xVPHs">
                  <node concept="chp4Y" id="49WTic8eAhT" role="ri$Ld">
                    <ref role="cht4Q" to="zzzn:6zmBjqUmsuo" resolve="ShortLambdaItExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="49WTic8eCwO" role="2OqNvi">
              <node concept="1bVj0M" id="49WTic8eCwQ" role="23t8la">
                <node concept="3clFbS" id="49WTic8eCwR" role="1bW5cS">
                  <node concept="3clFbF" id="49WTic8eCyZ" role="3cqZAp">
                    <node concept="2OqwBi" id="49WTic8eCA1" role="3clFbG">
                      <node concept="37vLTw" id="49WTic8eCyY" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WTic8eCwS" resolve="it" />
                      </node>
                      <node concept="1P9Npp" id="49WTic8eCFh" role="2OqNvi">
                        <node concept="2pJPEk" id="49WTic8eCHY" role="1P9ThW">
                          <node concept="2pJPED" id="49WTic8eCKF" role="2pJPEn">
                            <ref role="2pJxaS" to="zzzn:6zmBjqUkHal" resolve="LambdaArgRef" />
                            <node concept="2pIpSj" id="49WTic8eCQh" role="2pJxcM">
                              <ref role="2pIpSl" to="zzzn:6zmBjqUkHam" />
                              <node concept="36biLy" id="49WTic8eDst" role="2pJxcZ">
                                <node concept="37vLTw" id="49WTic8eDuU" role="36biLW">
                                  <ref role="3cqZAo" node="49WTic8eCUf" resolve="arg" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="49WTic8eCwS" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="49WTic8eCwT" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$yb$20fCDo" role="3cqZAp">
          <node concept="37vLTw" id="$yb$20fCDm" role="3clFbG">
            <ref role="3cqZAo" node="49WTic8ey5D" resolve="le" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="$yb$20fCkY" role="3clF45">
        <ref role="ehGHo" to="zzzn:6zmBjqUkws6" resolve="LambdaExpression" />
      </node>
    </node>
    <node concept="13hLZK" id="6zmBjqUm7On" role="13h7CW">
      <node concept="3clFbS" id="6zmBjqUm7Oo" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6zmBjqUmsve">
    <property role="3GE5qa" value="lambda" />
    <ref role="13h7C2" to="zzzn:6zmBjqUmsuo" resolve="ShortLambdaItExpression" />
    <node concept="13hLZK" id="6zmBjqUmsvf" role="13h7CW">
      <node concept="3clFbS" id="6zmBjqUmsvg" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6zmBjqUmsvh" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="6zmBjqUmsvi" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUmsvl" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUmsvL" role="3cqZAp">
          <node concept="Xl_RD" id="6zmBjqUmsvK" role="3clFbG">
            <property role="Xl_RC" value="it" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6zmBjqUmsvm" role="3clF45" />
    </node>
    <node concept="13i0hz" id="6zmBjqUmsvn" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3Tm1VV" id="6zmBjqUmsvo" role="1B3o_S" />
      <node concept="3clFbS" id="6zmBjqUmsvr" role="3clF47">
        <node concept="3clFbF" id="6zmBjqUmsvu" role="3cqZAp">
          <node concept="3clFbT" id="6zmBjqUmsvt" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="6zmBjqUmsvs" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="49WTic8eUl7">
    <property role="3GE5qa" value="function" />
    <ref role="13h7C2" to="zzzn:49WTic8eSCJ" resolve="IFunctionLike" />
    <node concept="13hLZK" id="49WTic8eUl8" role="13h7CW">
      <node concept="3clFbS" id="49WTic8eUl9" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="49WTic8eUlC" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getUniquelyNamedElements" />
      <ref role="13i0hy" to="hwgx:4qSf1u1TRfj" resolve="getUniquelyNamedElements" />
      <node concept="3Tm1VV" id="49WTic8eUlD" role="1B3o_S" />
      <node concept="3clFbS" id="49WTic8eUlH" role="3clF47">
        <node concept="3clFbF" id="49WTic8eUlQ" role="3cqZAp">
          <node concept="2OqwBi" id="49WTic8eUnL" role="3clFbG">
            <node concept="13iPFW" id="49WTic8eUlP" role="2Oq$k0" />
            <node concept="3Tsc0h" id="49WTic8eUrc" role="2OqNvi">
              <ref role="3TtcxE" to="zzzn:49WTic8eSCZ" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="49WTic8eUlI" role="3clF45">
        <node concept="3Tqbb2" id="49WTic8eUlJ" role="A3Ik2">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="49WTic8fT6Q">
    <property role="3GE5qa" value="function" />
    <ref role="13h7C2" to="zzzn:49WTic8g3uH" resolve="ArgRef" />
    <node concept="13i0hz" id="49WTic8fT72" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="49WTic8fT73" role="1B3o_S" />
      <node concept="3clFbS" id="49WTic8fT74" role="3clF47">
        <node concept="3clFbF" id="49WTic8fT75" role="3cqZAp">
          <node concept="2OqwBi" id="49WTic8fT76" role="3clFbG">
            <node concept="2OqwBi" id="49WTic8fT77" role="2Oq$k0">
              <node concept="13iPFW" id="49WTic8fT78" role="2Oq$k0" />
              <node concept="3TrEf2" id="49WTic8ggDO" role="2OqNvi">
                <ref role="3Tt5mk" to="zzzn:49WTic8ggq6" />
              </node>
            </node>
            <node concept="3TrcHB" id="49WTic8fT7a" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="49WTic8fT7b" role="3clF45" />
    </node>
    <node concept="13i0hz" id="49WTic8fT7c" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3Tm1VV" id="49WTic8fT7d" role="1B3o_S" />
      <node concept="3clFbS" id="49WTic8fT7e" role="3clF47">
        <node concept="3clFbF" id="49WTic8fT7f" role="3cqZAp">
          <node concept="3clFbT" id="49WTic8fT7g" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="49WTic8fT7h" role="3clF45" />
    </node>
    <node concept="13hLZK" id="49WTic8fT6R" role="13h7CW">
      <node concept="3clFbS" id="49WTic8fT6S" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="22hm_0zvyXU" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="target" />
      <ref role="13i0hy" to="pbu6:6rGLT0TevFd" resolve="target" />
      <node concept="3Tm1VV" id="22hm_0zvyXV" role="1B3o_S" />
      <node concept="3clFbS" id="22hm_0zvyXY" role="3clF47">
        <node concept="3clFbF" id="22hm_0zvyZQ" role="3cqZAp">
          <node concept="2OqwBi" id="22hm_0zvz1Z" role="3clFbG">
            <node concept="13iPFW" id="22hm_0zvyZP" role="2Oq$k0" />
            <node concept="3TrEf2" id="22hm_0zvz6B" role="2OqNvi">
              <ref role="3Tt5mk" to="zzzn:49WTic8ggq6" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="22hm_0zvyXZ" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="49WTic8ivWf">
    <property role="3GE5qa" value="block" />
    <ref role="13h7C2" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
    <node concept="13hLZK" id="49WTic8ivWg" role="13h7CW">
      <node concept="3clFbS" id="49WTic8ivWh" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="49WTic8ivWi" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="49WTic8ivWj" role="1B3o_S" />
      <node concept="3clFbS" id="49WTic8ivWm" role="3clF47">
        <node concept="3clFbF" id="49WTic8ivWM" role="3cqZAp">
          <node concept="Xl_RD" id="49WTic8ivWL" role="3clFbG">
            <property role="Xl_RC" value="{block}" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="49WTic8ivWn" role="3clF45" />
    </node>
    <node concept="13i0hz" id="49WTic8ivWo" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3Tm1VV" id="49WTic8ivWp" role="1B3o_S" />
      <node concept="3clFbS" id="49WTic8ivWs" role="3clF47">
        <node concept="3clFbF" id="49WTic8ivWv" role="3cqZAp">
          <node concept="3clFbT" id="49WTic8ivWu" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="49WTic8ivWt" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="49WTic8iGDc">
    <property role="3GE5qa" value="block" />
    <ref role="13h7C2" to="zzzn:49WTic8ix6I" resolve="ValExpression" />
    <node concept="13hLZK" id="49WTic8iGDd" role="13h7CW">
      <node concept="3clFbS" id="49WTic8iGDe" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="49WTic8iGDf" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="49WTic8iGDg" role="1B3o_S" />
      <node concept="3clFbS" id="49WTic8iGDj" role="3clF47">
        <node concept="3clFbF" id="49WTic8iGDJ" role="3cqZAp">
          <node concept="Xl_RD" id="49WTic8iGDI" role="3clFbG">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="49WTic8iGDk" role="3clF45" />
    </node>
    <node concept="13i0hz" id="49WTic8iGDl" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3Tm1VV" id="49WTic8iGDm" role="1B3o_S" />
      <node concept="3clFbS" id="49WTic8iGDp" role="3clF47">
        <node concept="3clFbF" id="49WTic8iGDs" role="3cqZAp">
          <node concept="3clFbT" id="49WTic8iGDr" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="49WTic8iGDq" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="49WTic8jevh">
    <property role="3GE5qa" value="block" />
    <ref role="13h7C2" to="zzzn:49WTic8iHUx" resolve="ValRef" />
    <node concept="13hLZK" id="49WTic8jevi" role="13h7CW">
      <node concept="3clFbS" id="49WTic8jevj" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="49WTic8jevn" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="49WTic8jevo" role="1B3o_S" />
      <node concept="3clFbS" id="49WTic8jevr" role="3clF47">
        <node concept="3clFbF" id="49WTic8jevR" role="3cqZAp">
          <node concept="Xl_RD" id="49WTic8jevQ" role="3clFbG">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="49WTic8jevs" role="3clF45" />
    </node>
    <node concept="13i0hz" id="49WTic8jevt" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3Tm1VV" id="49WTic8jevu" role="1B3o_S" />
      <node concept="3clFbS" id="49WTic8jevx" role="3clF47">
        <node concept="3clFbF" id="49WTic8jev$" role="3cqZAp">
          <node concept="3clFbT" id="49WTic8jevz" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="49WTic8jevy" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="$yb$20nbQP">
    <property role="3GE5qa" value="function" />
    <ref role="13h7C2" to="zzzn:6zmBjqUkws9" resolve="IArgument" />
    <node concept="13hLZK" id="$yb$20nbQQ" role="13h7CW">
      <node concept="3clFbS" id="$yb$20nbQR" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="$yb$20nbRg">
    <property role="3GE5qa" value="lambda" />
    <ref role="13h7C2" to="zzzn:6zmBjqUkwse" resolve="LambdaArg" />
    <node concept="13hLZK" id="$yb$20nbRh" role="13h7CW">
      <node concept="3clFbS" id="$yb$20nbRi" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="$yb$20nbRj" role="13h7CS">
      <property role="13i0is" value="false" />
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="$yb$20nbSr" role="1B3o_S" />
      <node concept="3clFbS" id="$yb$20nbVg" role="3clF47">
        <node concept="3clFbF" id="$yb$20nbVl" role="3cqZAp">
          <node concept="3cpWs3" id="$yb$20ncBo" role="3clFbG">
            <node concept="2OqwBi" id="$yb$20ncFk" role="3uHU7w">
              <node concept="13iPFW" id="$yb$20ncBG" role="2Oq$k0" />
              <node concept="3TrcHB" id="$yb$20ncMD" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="$yb$20ncxB" role="3uHU7B">
              <node concept="2OqwBi" id="$yb$20nceq" role="3uHU7B">
                <node concept="2OqwBi" id="$yb$20nbZz" role="2Oq$k0">
                  <node concept="13iPFW" id="$yb$20nbWg" role="2Oq$k0" />
                  <node concept="3TrEf2" id="$yb$20nc67" role="2OqNvi">
                    <ref role="3Tt5mk" to="zzzn:6zmBjqUkwsc" />
                  </node>
                </node>
                <node concept="2qgKlT" id="$yb$20ncjd" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="$yb$20ncy9" role="3uHU7w">
                <property role="Xl_RC" value=" " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="$yb$20nbVh" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="2rOWEwsAzWc">
    <property role="3GE5qa" value="function" />
    <ref role="13h7C2" to="zzzn:2rOWEwsAzV1" resolve="BindOp" />
    <node concept="13i0hz" id="2rOWEwsAzWf" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderReadable" />
      <ref role="13i0hy" to="pbu6:6kR0qIbI2yi" resolve="renderReadable" />
      <node concept="3Tm1VV" id="2rOWEwsAzWg" role="1B3o_S" />
      <node concept="3clFbS" id="2rOWEwsAzWh" role="3clF47">
        <node concept="3clFbF" id="2rOWEwsAzWi" role="3cqZAp">
          <node concept="Xl_RD" id="2rOWEwsAzWj" role="3clFbG">
            <property role="Xl_RC" value="bind" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2rOWEwsAzWk" role="3clF45" />
    </node>
    <node concept="13hLZK" id="2rOWEwsAzWd" role="13h7CW">
      <node concept="3clFbS" id="2rOWEwsAzWe" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="22hm_0zvyJc">
    <property role="3GE5qa" value="function" />
    <ref role="13h7C2" to="zzzn:49WTic8hm1E" resolve="IFunctionRef" />
    <node concept="13hLZK" id="22hm_0zvyJd" role="13h7CW">
      <node concept="3clFbS" id="22hm_0zvyJe" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="22hm_0zvyJf" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="target" />
      <ref role="13i0hy" to="pbu6:6rGLT0TevFd" resolve="target" />
      <node concept="3Tm1VV" id="22hm_0zvyJg" role="1B3o_S" />
      <node concept="3clFbS" id="22hm_0zvyJj" role="3clF47">
        <node concept="3clFbF" id="22hm_0zvyJq" role="3cqZAp">
          <node concept="2OqwBi" id="22hm_0zvyL6" role="3clFbG">
            <node concept="13iPFW" id="22hm_0zvyJp" role="2Oq$k0" />
            <node concept="3TrEf2" id="22hm_0zvyOx" role="2OqNvi">
              <ref role="3Tt5mk" to="zzzn:49WTic8hm1F" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="22hm_0zvyJk" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="22hm_0zvyQM">
    <property role="3GE5qa" value="function" />
    <ref role="13h7C2" to="zzzn:49WTic8gvys" resolve="IFunctionCall" />
    <node concept="13hLZK" id="22hm_0zvyQN" role="13h7CW">
      <node concept="3clFbS" id="22hm_0zvyQO" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="22hm_0zvyQP" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="target" />
      <ref role="13i0hy" to="pbu6:6rGLT0TevFd" resolve="target" />
      <node concept="3Tm1VV" id="22hm_0zvyQQ" role="1B3o_S" />
      <node concept="3clFbS" id="22hm_0zvyQT" role="3clF47">
        <node concept="3clFbF" id="22hm_0zvyR0" role="3cqZAp">
          <node concept="2OqwBi" id="22hm_0zvySG" role="3clFbG">
            <node concept="13iPFW" id="22hm_0zvyQZ" role="2Oq$k0" />
            <node concept="3TrEf2" id="22hm_0zvyW7" role="2OqNvi">
              <ref role="3Tt5mk" to="zzzn:49WTic8gvyC" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="22hm_0zvyQU" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="22hm_0zJHWe">
    <ref role="13h7C2" to="zzzn:22hm_0zJHU7" resolve="CapturedValue" />
    <node concept="13i0hz" id="22hm_0zJHWz" role="13h7CS">
      <property role="TrG5h" value="setValue" />
      <node concept="3Tm1VV" id="22hm_0zJHW$" role="1B3o_S" />
      <node concept="3clFbS" id="22hm_0zJHW_" role="3clF47">
        <node concept="3clFbF" id="22hm_0zJHWT" role="3cqZAp">
          <node concept="2OqwBi" id="22hm_0zJI2u" role="3clFbG">
            <node concept="2JrnkZ" id="22hm_0zJI1x" role="2Oq$k0">
              <node concept="13iPFW" id="22hm_0zJHWS" role="2JrQYb" />
            </node>
            <node concept="liA8E" id="22hm_0zJI4i" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
              <node concept="Xl_RD" id="22hm_0zJI4E" role="37wK5m">
                <property role="Xl_RC" value="value" />
              </node>
              <node concept="37vLTw" id="22hm_0zJIaX" role="37wK5m">
                <ref role="3cqZAo" node="22hm_0zJHWJ" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="22hm_0zJHWF" role="3clF45" />
      <node concept="37vLTG" id="22hm_0zJHWJ" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="22hm_0zJHWI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="22hm_0zJIbF" role="13h7CS">
      <property role="TrG5h" value="getValue" />
      <node concept="3Tm1VV" id="22hm_0zJIbG" role="1B3o_S" />
      <node concept="3clFbS" id="22hm_0zJIbH" role="3clF47">
        <node concept="3clFbF" id="22hm_0zJIcI" role="3cqZAp">
          <node concept="2OqwBi" id="22hm_0zJIio" role="3clFbG">
            <node concept="2JrnkZ" id="22hm_0zJIhm" role="2Oq$k0">
              <node concept="13iPFW" id="22hm_0zJIcH" role="2JrQYb" />
            </node>
            <node concept="liA8E" id="22hm_0zJIkc" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
              <node concept="Xl_RD" id="22hm_0zJIkA" role="37wK5m">
                <property role="Xl_RC" value="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="22hm_0zJIcC" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="13hLZK" id="22hm_0zJHWf" role="13h7CW">
      <node concept="3clFbS" id="22hm_0zJHWg" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="22hm_0zJInz" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="22hm_0zJIn$" role="1B3o_S" />
      <node concept="3clFbS" id="22hm_0zJInB" role="3clF47">
        <node concept="3clFbF" id="22hm_0zJXSJ" role="3cqZAp">
          <node concept="3cpWs3" id="22hm_0zJYoQ" role="3clFbG">
            <node concept="Xl_RD" id="22hm_0zJYoT" role="3uHU7w">
              <property role="Xl_RC" value="&gt;" />
            </node>
            <node concept="3cpWs3" id="22hm_0$6GF5" role="3uHU7B">
              <node concept="2OqwBi" id="22hm_0$6Hbp" role="3uHU7w">
                <node concept="2OqwBi" id="22hm_0$6GJU" role="2Oq$k0">
                  <node concept="13iPFW" id="22hm_0$6GGE" role="2Oq$k0" />
                  <node concept="3TrEf2" id="22hm_0$6GQF" role="2OqNvi">
                    <ref role="3Tt5mk" to="zzzn:22hm_0$0c7L" />
                  </node>
                </node>
                <node concept="2qgKlT" id="22hm_0$6Hh$" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="3cpWs3" id="22hm_0$6G_g" role="3uHU7B">
                <node concept="3cpWs3" id="22hm_0zJXV4" role="3uHU7B">
                  <node concept="Xl_RD" id="22hm_0zJXSI" role="3uHU7B">
                    <property role="Xl_RC" value="&lt;captured:" />
                  </node>
                  <node concept="2OqwBi" id="22hm_0zJYa4" role="3uHU7w">
                    <node concept="2OqwBi" id="22hm_0zJXXJ" role="2Oq$k0">
                      <node concept="13iPFW" id="22hm_0zJXVb" role="2Oq$k0" />
                      <node concept="2qgKlT" id="22hm_0zJY2s" role="2OqNvi">
                        <ref role="37wK5l" node="22hm_0zJIbF" resolve="getValue" />
                      </node>
                    </node>
                    <node concept="liA8E" id="22hm_0zJYb_" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="22hm_0$6G_j" role="3uHU7w">
                  <property role="Xl_RC" value="/" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="22hm_0zJInC" role="3clF45" />
    </node>
    <node concept="13i0hz" id="22hm_0zJInD" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3Tm1VV" id="22hm_0zJInE" role="1B3o_S" />
      <node concept="3clFbS" id="22hm_0zJInH" role="3clF47">
        <node concept="3clFbF" id="22hm_0zJInK" role="3cqZAp">
          <node concept="3clFbT" id="22hm_0zJInJ" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="22hm_0zJInI" role="3clF45" />
    </node>
  </node>
</model>

