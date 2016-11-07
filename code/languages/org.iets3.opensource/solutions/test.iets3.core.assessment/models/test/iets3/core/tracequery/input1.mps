<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6086f3d1-6a37-42fa-a020-ed8795a753b4(test.iets3.core.tracequery.input1)" doNotGenerate="true">
  <persistence version="9" />
  <languages>
    <use id="d4280a54-f6df-4383-aa41-d1b2bffa7eb1" name="com.mbeddr.core.base" version="3" />
    <use id="be5191a9-3476-47ca-b2a7-a426623add55" name="org.iets3.core.assessment" version="0" />
    <use id="9eff3336-14d7-46c5-afe1-dcbad13c14c3" name="org.iets3.core.trace.test" version="0" />
    <use id="f0fd486f-8577-43e9-b671-3d118449c6e7" name="org.iets3.components.core" version="6" />
    <use id="7d21cc4b-4c24-41db-9868-8af4a7f3eba9" name="org.iets3.core.trace" version="0" />
  </languages>
  <imports>
    <import index="ojsi" ref="r:b0e95cf0-c90a-4e90-a237-8deec9b70ebc(test.iets3.core.tracequery.input2)" />
    <import index="w9y2" ref="r:b3786745-c763-4a49-a754-f84e15236f18(org.iets3.components.core.structure)" />
  </imports>
  <registry>
    <language id="7d21cc4b-4c24-41db-9868-8af4a7f3eba9" name="org.iets3.core.trace">
      <concept id="2117670517801950028" name="org.iets3.core.trace.structure.ITraceTargetProvider" flags="ng" index="2Dx65h">
        <reference id="2117670517801950029" name="traceTarget" index="2Dx65g" />
      </concept>
      <concept id="2117670517801951066" name="org.iets3.core.trace.structure.NamedTargetProvider" flags="ng" index="2Dx6l7" />
      <concept id="2117670517801898047" name="org.iets3.core.trace.structure.ITrace" flags="ng" index="2DxiCy">
        <child id="2117670517801898058" name="traceTarget" index="2DxiDn" />
        <child id="2117670517801898048" name="traceKind" index="2DxiDt" />
      </concept>
      <concept id="2117670517801897954" name="org.iets3.core.trace.structure.TraceAttributeValue" flags="ng" index="2DxjnZ" />
      <concept id="2117670517802470200" name="org.iets3.core.trace.structure.TraceAttribute" flags="ng" index="2Dz74_" />
    </language>
    <language id="583939be-ded0-4735-a055-a74f8477fc34" name="org.iets3.core.attributes">
      <concept id="4388710048722005709" name="org.iets3.core.attributes.structure.IAttributed" flags="ng" index="18DfD4">
        <child id="4388710048722005710" name="attributes" index="18DfD7" />
      </concept>
      <concept id="1970998948978453245" name="org.iets3.core.attributes.structure.IValueAttribute" flags="ng" index="3PRgZ$">
        <child id="1970998948979996854" name="value" index="3PL9QJ" />
      </concept>
    </language>
    <language id="d4280a54-f6df-4383-aa41-d1b2bffa7eb1" name="com.mbeddr.core.base">
      <concept id="8490595898229129994" name="com.mbeddr.core.base.structure.CurrentModelScopeAndImported" flags="ng" index="28wEjL" />
      <concept id="671216505796623802" name="com.mbeddr.core.base.structure.DefaultAssessmentSummary" flags="ng" index="qc_Tx">
        <property id="671216505796623807" name="newlyAdded" index="qc_T$" />
        <property id="671216505796623806" name="ok" index="qc_T_" />
        <property id="671216505796623805" name="totalCount" index="qc_TA" />
      </concept>
      <concept id="865293814733114043" name="com.mbeddr.core.base.structure.AssessmentContainer" flags="ng" index="3pwaUo">
        <child id="865293814733114045" name="assessments" index="3pwaUu" />
      </concept>
      <concept id="865293814733114044" name="com.mbeddr.core.base.structure.Assessment" flags="ng" index="3pwaUv">
        <property id="4423545983997787056" name="lastUdpatedBy" index="2iEaKi" />
        <property id="4423545983997782838" name="lastUpdatedOn" index="2iEbMk" />
        <child id="671216505796427450" name="summaries" index="q3PPx" />
        <child id="865293814733115677" name="query" index="3pwbkY" />
      </concept>
    </language>
    <language id="f0fd486f-8577-43e9-b671-3d118449c6e7" name="org.iets3.components.core">
      <concept id="7804632404593513952" name="org.iets3.components.core.structure.ComponentKind" flags="ng" index="1i0KCM" />
      <concept id="7804632404593342574" name="org.iets3.components.core.structure.EmptyComponentsChunkContent" flags="ng" index="1i1AuW" />
      <concept id="7804632404593341326" name="org.iets3.components.core.structure.ComponentsChunk" flags="ng" index="1i1ALs">
        <child id="7804632404593342038" name="contents" index="1i1AA4" />
      </concept>
      <concept id="7804632404593231361" name="org.iets3.components.core.structure.Component" flags="ng" index="1i1XBj">
        <child id="7804632404593514231" name="kind" index="1i0K$_" />
      </concept>
    </language>
    <language id="be5191a9-3476-47ca-b2a7-a426623add55" name="org.iets3.core.assessment">
      <concept id="6913547888673489335" name="org.iets3.core.assessment.structure.GenericTraceQuery" flags="ng" index="25YdEr">
        <child id="6913547888673496435" name="scope" index="25Ycpv" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="9eff3336-14d7-46c5-afe1-dcbad13c14c3" name="org.iets3.core.trace.test">
      <concept id="1977415354602970500" name="org.iets3.core.trace.test.structure.RealizesKind" flags="ng" index="3jWAPd" />
      <concept id="1977415354602911755" name="org.iets3.core.trace.test.structure.DefaultTrace" flags="ng" index="3jWOz2" />
    </language>
  </registry>
  <node concept="3pwaUo" id="1HLccB8wTr_">
    <property role="TrG5h" value="TestAssessment" />
    <node concept="3pwaUv" id="1HLccB8wTrA" role="3pwaUu">
      <property role="TrG5h" value="a1" />
      <property role="2iEbMk" value="1478536963652" />
      <property role="2iEaKi" value="Rimer" />
      <node concept="25YdEr" id="1HLccB8wTrE" role="3pwbkY">
        <node concept="28wEjL" id="mhbzaHlZoa" role="25Ycpv" />
      </node>
      <node concept="qc_Tx" id="mhbzaHnO$2" role="q3PPx">
        <property role="qc_TA" value="5" />
        <property role="qc_T$" value="5" />
        <property role="qc_T_" value="0" />
      </node>
    </node>
  </node>
  <node concept="1i1ALs" id="1HLccB8wSqj">
    <property role="TrG5h" value="testChunc" />
    <node concept="1i1XBj" id="1HLccB8wSqs" role="1i1AA4">
      <property role="TrG5h" value="A" />
      <node concept="1i0KCM" id="1HLccB8wSqu" role="1i0K$_" />
      <node concept="2Dz74_" id="1HLccB8yRh2" role="18DfD7">
        <node concept="2DxjnZ" id="1HLccB8yRh3" role="3PL9QJ">
          <node concept="3jWOz2" id="1HLccB8zEJ8" role="2DxiDt" />
          <node concept="2Dx6l7" id="1HLccB8zEJb" role="2DxiDn">
            <ref role="2Dx65g" node="1HLccB8wSqC" resolve="B" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1i1XBj" id="1HLccB8wSqC" role="1i1AA4">
      <property role="TrG5h" value="B" />
      <node concept="1i0KCM" id="1HLccB8wSqD" role="1i0K$_" />
      <node concept="2Dz74_" id="1HLccB8wSr3" role="18DfD7">
        <node concept="2DxjnZ" id="1HLccB8wSr4" role="3PL9QJ">
          <node concept="3jWAPd" id="1HLccB8wSSk" role="2DxiDt" />
          <node concept="2Dx6l7" id="1HLccB8wSSm" role="2DxiDn">
            <ref role="2Dx65g" node="1HLccB8wSqs" resolve="A" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1i1XBj" id="1HLccB8wSqS" role="1i1AA4">
      <property role="TrG5h" value="C" />
      <node concept="1i0KCM" id="1HLccB8wSqT" role="1i0K$_" />
      <node concept="2Dz74_" id="1HLccB8wTrk" role="18DfD7">
        <node concept="2DxjnZ" id="1HLccB8wTrl" role="3PL9QJ">
          <node concept="3jWAPd" id="1HLccB8zEJd" role="2DxiDt" />
          <node concept="2Dx6l7" id="1HLccB8yIol" role="2DxiDn">
            <ref role="2Dx65g" node="1HLccB8wSqC" resolve="B" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1i1AuW" id="1HLccB8wSqK" role="1i1AA4" />
    <node concept="1i1AuW" id="1HLccB8wSqz" role="1i1AA4" />
  </node>
</model>

