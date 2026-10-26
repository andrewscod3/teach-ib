import 'package:flutter/material.dart';
import 'lista_documentos_screen.dart'; // Importamos nuestra nueva pantalla intermedia con pestañas

class AsignaturasScreen extends StatelessWidget {
  const AsignaturasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Asignaturas', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            _buildSubMenuButton(
              context, 
              'Biología', 
              // --- NM (SL) ---
              [
                {'nombre': 'Prueba 1 - SL Noviembre 2017', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Biologia/Biology_paper_1__SL_Spanish%20(2).pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2016', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Biologia/Biology_paper_2__SL_Spanish%20(1).pdf'},
                {'nombre': 'Prueba 3 - SL Noviembre 2016', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Biologia/Biology_paper_3__SL_Spanish%20(1).pdf'}
              ],
              // --- NS (HL) ---
              []
            ),
            const SizedBox(height: 15),

            _buildSubMenuButton(
              context, 
              'Física', 
              // --- NM (SL) ---
              [
                {'nombre': 'Prueba 1 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Fisica%20NM/Physics_paper_1__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 1 - SL Noviembre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Fisica%20NM/Physics_paper_1__SL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Fisica%20NM/Physics_paper_2__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Fisica%20NM/Physics_paper_2__SL_Spanish.pdf'}
              ],
              // --- NS (HL) ---
              []
            ),
            const SizedBox(height: 15),

            _buildSubMenuButton(
              context, 
              'Gestión Empresarial', 
              // --- NM (SL) ---
              [
                {'nombre': 'Prueba 1 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Gestion%20Empresarial/Business_management_paper_1__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 1 - SL Octubre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Gestion%20Empresarial/Business_management_paper_1__SL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Gestion%20Empresarial/Business_management_paper_2__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Octubre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Gestion%20Empresarial/Business_management_paper_2__SL_Spanish.pdf'}
              ],
              // --- NS (HL) ---
              []
            ),
            const SizedBox(height: 15),

            _buildSubMenuButton(
              context,
              'Historia',
              // --- NM (SL) --- (Archivos HLSL compartidos)
              [
                {'nombre': 'Prueba 1 - HLSL Noviembre 2002 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_1_HLSL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 1 - HLSL Noviembre 2002', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_1_HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Noviembre 2002 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_2_HLSL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Noviembre 2002', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_2_HLSL_Spanish.pdf'},
              ],
              // --- NS (HL) --- (Incluye los HLSL y los exclusivos HL)
              [
                {'nombre': 'Prueba 1 - HLSL Noviembre 2002 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_1_HLSL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 1 - HLSL Noviembre 2002', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_1_HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Noviembre 2002 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_2_HLSL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Noviembre 2002', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_2_HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 3 - HL Noviembre 2002 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_3_Americas_HL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 3 - HL Noviembre 2002', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Historia/History_paper_3_Americas_HL_Spanish.pdf'}
              ]
            ),
            const SizedBox(height: 15),
            
            _buildSubMenuButton(
              context, 
              'Inglés', 
              // --- NM (SL) ---
              [],
              // --- NS (HL) ---
              [
                {'nombre': 'Prueba 1 - HL Noviembre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Ingles/English_B_paper_1__HL.pdf'},
                {'nombre': 'Prueba 1 - HL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Ingles/English_B_paper_1__HL_markscheme.pdf'},
                {'nombre': 'Prueba 2 - HL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Ingles/English_B_paper_2_reading_comprehension__HL_markscheme.pdf'},
                {'nombre': 'Prueba 2 - HL Noviembre 2022 (Question Booklet)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Ingles/English_B_paper_2_reading_comprehension__question_booklet_HL.pdf'},
                {'nombre': 'Prueba 2 - HL Noviembre 2022 (Text Booklet)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Ingles/English_B_paper_2_reading_comprehension__text_booklet_HL.pdf'}
              ]
            ),
            const SizedBox(height: 15),
            
            _buildSubMenuButton(
              context, 
              'Lengua y Literatura',
              // --- NM (SL) --- (Solo los archivos compartidos HLSL)
              [
                {'nombre': 'Prueba 2 - HLSL Spanish 2023', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_2__HLSL_Spanish%20(1).pdf'},
                {'nombre': 'Prueba 2 - HLSL Spanish 2024', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_2__HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Spanish 2025', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_2_HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 1 - TZ2 HLSL Spanish 2023', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Literature_paper_2__TZ1_HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - TZ2 HLSL Spanish 2023', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Literature_paper_2__TZ2_HLSL_Spanish.pdf'}
              ],
              // --- NS (HL) --- (Incluye exclusivos HL y compartidos HLSL)
              [
                {'nombre': 'Prueba 1 - HL Mayo 2021', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_1__HL_Spanish_Convocatoria_Mayo_2021.pdf'},
                {'nombre': 'Prueba 1 - HL Mayo 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_1__HL_Spanish_Convocatoria_Mayo_2022.pdf'},
                {'nombre': 'Prueba 1 - HL Noviembre 2021', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_1__HL_Spanish_Convocatoria_Noviembre_2021.pdf'},
                {'nombre': 'Prueba 1 - HL Noviembre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_1__HL_Spanish_Convocatoria_Noviembre_2022.pdf'},
                {'nombre': 'Prueba 2 - HLSL Spanish 2023', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_2__HLSL_Spanish%20(1).pdf'},
                {'nombre': 'Prueba 2 - HLSL Spanish 2024', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_2__HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Spanish 2025', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Language_and_literature_paper_2_HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 1 - TZ2 HLSL Spanish 2023', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Literature_paper_2__TZ1_HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - TZ2 HLSL Spanish 2023', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Lengua%20y%20Literatura/Spanish_A_Literature_paper_2__TZ2_HLSL_Spanish.pdf'}
              ]
            ),
            const SizedBox(height: 15),
            
            _buildSubMenuButton(
              context, 
              'Matemáticas Análisis y Enfoque', 
              // --- NM (SL) ---
              [
                {'nombre': 'Prueba 1 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Matematicas%20Analisis%20y%20Enfoque/Mathematics_analysis_and_approaches_paper_1__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 1 - SL Octubre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Matematicas%20Analisis%20y%20Enfoque/Mathematics_analysis_and_approaches_paper_1__SL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Matematicas%20Analisis%20y%20Enfoque/Mathematics_analysis_and_approaches_paper_2__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Matematicas%20Analisis%20y%20Enfoque/Mathematics_analysis_and_approaches_paper_2__SL_Spanish.pdf'}
              ],
              // --- NS (HL) ---
              []
            ),
            const SizedBox(height: 15),
            
            _buildSubMenuButton(
              context, 
              'Matemáticas Aplicaciones e Interpretaciones', 
              // --- NM (SL) ---
              [
                {'nombre': 'Prueba 1 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Matematicas%20Aplicaciones%20e%20Interpretaciones/Mathematics_applications_and_interpretation_paper_1__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 1 - SL Octubre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Matematicas%20Aplicaciones%20e%20Interpretaciones/Mathematics_applications_and_interpretation_paper_1__SL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Matematicas%20Aplicaciones%20e%20Interpretaciones/Mathematics_applications_and_interpretation_paper_2__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Matematicas%20Aplicaciones%20e%20Interpretaciones/Mathematics_applications_and_interpretation_paper_2__SL_Spanish.pdf'}
              ],
              // --- NS (HL) ---
              []
            ),
            const SizedBox(height: 15),

            _buildSubMenuButton(
              context, 
              'Química', 
              // --- NM (SL) ---
              [
                {'nombre': 'Prueba 1 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Quimica/Chemistry_paper_1__SL_markscheme.pdf'},
                {'nombre': 'Prueba 1 - SL Noviembre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Quimica/Chemistry_paper_1__SL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2022 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Quimica/Chemistry_paper_2__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Noviembre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Quimica/Chemistry_paper_2__SL_Spanish.pdf'}
              ],
              // --- NS (HL) ---
              []
            ),
            const SizedBox(height: 15),

            _buildSubMenuButton(
              context, 
              'SAS', 
              // --- NM (SL) ---
              [
                {'nombre': 'Prueba 1 - SL Octubre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/SAS/Environmental_systems_and_societies_paper_1__question_booklet_SL_Spanish.pdf'},
                {'nombre': 'Prueba 1 - SL Noviembre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/SAS/Environmental_systems_and_societies_paper_1__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 1 - SL Octubre 2022 (Text Booklet)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/SAS/Environmental_systems_and_societies_paper_1__text_booklet_SL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - SL Octubre 2022', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/SAS/Environmental_systems_and_societies_paper_2__SL_Spanish.pdf'}
              ],
              // --- NS (HL) ---
              []
            ),
            const SizedBox(height: 15),

            _buildSubMenuButton(
              context, 
              'Sociedad Digital', 
              // --- NM (SL) ---
              [
                {'nombre': 'Prueba 1 - SL Noviembre 2024 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Sociedad%20Digital/Digital_society_paper_1__SL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 1 - SL Noviembre 2024', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Sociedad%20Digital/Digital_society_paper_1__SL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Noviembre 2024 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Sociedad%20Digital/Digital_society_paper_2__HLSL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Noviembre 2024 (Question Booklet)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Sociedad%20Digital/Digital_society_paper_2__question_booklet_HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Noviembre 2024 (Resource Booklet)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Sociedad%20Digital/Digital_society_paper_2__resource_booklet_HLSL_Spanish.pdf'}
              ],
              // --- NS (HL) ---
              [
                {'nombre': 'Prueba 2 - HLSL Noviembre 2024 (Markscheme)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Sociedad%20Digital/Digital_society_paper_2__HLSL_markscheme_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Noviembre 2024 (Question Booklet)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Sociedad%20Digital/Digital_society_paper_2__question_booklet_HLSL_Spanish.pdf'},
                {'nombre': 'Prueba 2 - HLSL Noviembre 2024 (Resource Booklet)', 'url': 'https://cbetkagzztpvflsmjfhs.supabase.co/storage/v1/object/public/asignaturas_pdfs/Sociedad%20Digital/Digital_society_paper_2__resource_booklet_HLSL_Spanish.pdf'}
              ]
            ),
                     
          ],
        ),
      ),
    );
  }

  // Modificamos el widget base para que reciba DOS listas: documentosNM y documentosNS
  Widget _buildSubMenuButton(
    BuildContext context, 
    String titulo, 
    List<Map<String, String>> documentosNM,
    List<Map<String, String>> documentosNS,
  ) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal.shade100,
          foregroundColor: Colors.black87,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 2,
        ),
        onPressed: () {
          // Validamos si al menos una de las dos listas contiene documentos
          if (documentosNM.isNotEmpty || documentosNS.isNotEmpty) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListaDocumentosScreen(
                  tituloAsignatura: titulo,
                  documentosNM: documentosNM,
                  documentosNS: documentosNS,
                ),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Próximamente: Archivos de $titulo'),
                backgroundColor: Colors.teal,
                duration: const Duration(seconds: 1),
              ),
            );
          }
        },
        child: Text(titulo, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}