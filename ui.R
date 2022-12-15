
library(shiny)
library(shinydashboard)
library(shinythemes)
library(htmltools)
library(shinycssloaders)
gc()
# Define UI for application that draws a histogram
shinyUI(dashboardPage(
  dashboardHeader(title = 'Joey\'s project'),
  
  dashboardSidebar(
    
    sidebarMenu(
      menuItem(text = 'Profile', tabName = 'Profile', icon = icon('file'),
               menuSubItem("Resume", tabName = "Resume"),
               menuSubItem("Links", tabName = "Links")
               ),
      menuItem("Family Links", tabName = "family_links", icon = icon("link"))
    )
  ),
    dashboardBody(
        tabItems(
          tabItem(tabName = 'Resume',
              navbarPage(title = 'Resume', theme = "mytheme.css", 
#===================================Resume content below==========================================
      tags$div(id='resume',
      # HTML body
      tags$p(class= 'header', 'Qualification summary'),
      tags$hr(),
      tags$p(style="font-size: large;", 'Demonstrates excellent professional experience of bench work and instruments, 
             including preparing protein and DNA/RNA samples for high-throughput analysis, operating High-performance 
             liquid chromatography (HPLC;', 
             tags$a(href="https://www.thermofisher.com/order/catalog/product/IQLAAAGABHFAPBMBFC",'Ultimate 3000'),
             ', ThermoScientific) and Mass Spectrometry (MS;', 
             tags$a(href="https://www.thermofisher.com/order/catalog/product/IQLAAEGAAPFADBMBHQ",'Orbitrap Fusion'), 'and',
             tags$a(href="https://www.thermofisher.com/order/catalog/product/IQLAAEGAAPFALGMBDK",'Q Exactive plus'),
             ', ThermoScientific), Next generation sequence instruments, such as',
             tags$a(href="https://www.illumina.com/systems/sequencing-platforms/novaseq.html", 'NovaSeq'),
             tags$a(href="https://www.illumina.com/systems/sequencing-platforms/nextseq.html", 'NextSeq 500/550'),
             tags$a(href="https://www.illumina.com/systems/sequencing-platforms/miseq.html", 'MiSeq') , 
             '(Illumina), and Genetic analyzers',
             tags$a(href="https://www.thermofisher.com/order/catalog/product/3730XL", '3730xL'), 'and',
             tags$a(href="https://www.thermofisher.com/order/catalog/product/4406016",'3500xL'), 
             ', (Applied Biosystems), analyzing mass spectrometry data with',
             tags$a(href="https://www.thermofisher.com/order/catalog/product/OPTON-30965",'Xcalibur'),',',
             tags$a(href="https://www.thermofisher.com/order/catalog/product/OPTON-31014?SID=srch-hj-OPTON-31014",'Proteome Discoverer'),
             'software (ThermoScientific) and', tags$a(href="https://proteinmetrics.com/byonic/",'Byonics'),
             '(ProteinMetrics), analyzing DNA/RNA sequencing data with Linux shell and R scripts. 
              Validates outstanding knowledge in microbiology, immunology, neurology, and oncology 
              and great abilities in handling molecular experiments and rodent studies during research
              more than 20 years. Possesses excellent experimental skills and ability to handle mentors
              or supervisors request with utmost professionalism and efficiency.'
             ),
      tags$hr(class='hl'),
      tags$br(),
      tags$p(class="header", 'Education'),
      tags$hr(class='hl'),
      tags$div(class='education',
        tags$table(style="font-size: large;",
                   tags$tr(
                     tags$td(class= 'edp','09/2003-06/2011'),
                     tags$td(colspan="2",'Ph.D.* in Basic Medical Science, National Cheng Kung University, Taiwan')
                   ), # tag$tr
                   tags$tr(
                     tags$td(' '),
                     tags$td('Disseration title:'),
                     tags$td('The roles of polymorphisms in inflammatory genes of preterm, cerebral palsy children with dysregulated inflammatory responses')
                   ), # tag$tr
                   tags$tr(
                     tags$td(' '),
                     tags$td('Advisor:'),
                     tags$td('Dr. Chao-Ching Huang')
                   ), # tag$tr
                   tags$tr(
                     tags$td(class= 'edp',style="width: 150px;",'09/1999-06/2003'),
                     tags$td(colspan="2", 'BS in Microbiology, Soochow University, Taiwan')
                   ) # tag$tr
                  ), # tag$table
          tags$hr(class='hl'),
          tags$p(class ='note','*09/2003-06/2004 Master’s degree program of microbiology and immunology department at National Cheng Kung University')
      ), # tag$div
      tags$br(),
      tags$p(class="header", 'Work Experience'),
      tags$hr(class='hl'),
      tags$br(),
      tags$div(class="wkp",'10/2021 ~ Present'),
      tags$div(
        HTML(
         '  <pre class="wk">
            <b>Center for Biologics Evaluation and Research, Food and Drug Administration</b>
            <b>Position:</b> Staff fellow
            <b>Salary range:</b> $ 106,823/year
            <b>Project:</b> Proteins/DNA identification and sequencing.
            <b>Duties:</b>
            1. Conducting and preparing DNA samples for capillary DNA sequencing.
            2. Supporting Illumina Next Generation Sequencing DNA/RNA library preparation and instruments (NovaSeq, NextSeq, and MiSeq) operation.
            3. Conducting and preparing protein samples for MS.
            4. Performing and operating reverse phase HPLC (Ultimate 3000, ThermoScientific) and MS (Orbitrap Fusion and Q Exactive), with Tune and Xcalibur software (ThermoScientific).
            5. Data acquisition, Data analysis and interpreting results from capillary DNA sequencers and MS.
            6. Offering technical advice to scientists at FDA and NIH.
            </pre>'
        ) #HTML
      ), # tag$div
      tags$div(class="wkp",'05/2020 ~ 10/2021'),
      tags$div(
        HTML(
           '<pre class="wk">
            <b>Center for Biologics Evaluation and Research, Food and Drug Administration</b>
            <b>Position:</b> Contractor
            <b>Salary range:</b> Started at $96,000/year and Now at $ 96,278/year
            <b>Project:</b> Proteins/DNA identification and sequencing.
            <b>Duties:</b>
            1. Conducting and preparing DNA samples for capillary DNA sequencing.
            2. Supporting Illumina Next Generation Sequencing DNA/RNA library preparation and instruments (NovaSeq, NextSeq, and MiSeq) operation.
            3. Conducting and preparing protein samples for MS.
            4. Performing and operating reverse phase HPLC (Ultimate 3000, ThermoScientific) and MS (Orbitrap Fusion and Q Exactive), with Tune and Xcalibur software (ThermoScientific).
            5. Data acquisition, Data analysis and interpreting results from capillary DNA sequencers and MS.
            6. Offering technical advice to scientists at FDA and NIH.
            </pre>'
        ) # HTML
      ), # tag$div
      tags$div(class="wkp",'08/2016 ~ 05/2020'),
      tags$div(
        HTML(
           '<pre class="wk">
            <b>Center for Biologics Evaluation and Research, Food and Drug Administration</b>
            <b>Position:</b> ORISE fellow
            <b>Salary range:</b> Started at $ 7,000/month, including health insurance, and Ended at $ 6,970/month, excluding health insurance
            <b>Project:</b> Capillary DNA sequencing.
            <b>Duties:</b>
            1. Conducting and preparing DNA samples for capillary DNA sequencing.
            2. Performing and operating capillary DNA sequencer (3500xL, ABI).
            3. Data acquisition, Data analysis and interpreting results from capillary DNA sequencers.
            4. Offering technical advice to scientists at FDA and NIH.
            </pre>'
        ) #HTML
      ), # tag$div
      tags$div(class="wkp",'09/2013 ~ 08/2016'),
      tags$div(
        HTML(
        '   <pre class="wk">
            <b>Department of Pathology, University of Rochester</b>
            <b>Position:</b> Postdoctoral fellow
            <b>Salary range:</b> Started at $ 12,000/year, and Ended at $ 38,900/year
            <b>Projects:</b>
            1.	The role of neutrophils in bladder cancer progression.
            2.	Cross-resistance study between docetaxel and enzalutamide in prostate cancer treatment.
            3.	The mechanism of Dimethylcurcumin, ASC-J9, on downregulating androgen receptor in prostate cancer.
            <b>Duties:</b>
            1.	Culturing several cancer cell lines, including prostate cancer lines, bladder cancer cell lines, promyelocytic leukemia cell lines.
            2.	Establishing chemical drugs (Enzalutamide, docetaxel, cisplatin) resistant prostate cancer cell lines.
            3.	Preparing DNA/RNA and proteins from cells and animal tissues.
            4.	Constructing siRNA plasmids and siRNA lentivirus for transfecting cells.
            5.	Examining androgen receptors and its related genes expression by real-time PCR, western blots from cells and animal tissues.
            6.	Analyzing, interpreting data, and writing manuscripts.
            </pre>'
        ) # HTML
      ), # tag$div
      tags$div(class="wkp",'09/2012 ~ 08/2013'),
      tags$div(
        HTML(
        '   <pre class="wk">
            <b>Department of Pediatrics, National Cheng-Kung University, Taiwan</b>
            <b>Position:</b> Postdoctoral fellow
            <b>Salary range:</b> Started at $ 1,900/month, and Ended at $ 1,900/month
            <b>Projects:</b>
            1.	The relationship between pro-inflammatory genes polymorphisms and the occurrence of periventricular leukomalacia in premature infants.
            2.	Periventricular leukomalacia animal model establishment in mice and rats. 
            3.	Peripheral blood mononuclear cells immune responses in preterm children with cerebral palsy. 
            <b>Duties:</b>
            1.	Collecting serum and white blood cells from preterm children.
            2.	Recording demographics of preterm children from the clinic.
            3.	Conducting genotyping and polymorphism analysis of proinflammatory genes.
            4.	Establishing periventricular leukomalacia animal model in preterm rats.
            5.	Culturing primary peripheral blood mononuclear cells.
            6.	Examining inflammatory cytokines expression in serum and cultured medium by real-time PCR, ELISA.
            7.	Analyzing and interpreting data and writing manuscripts.
            8.	Supervising junior graduated studies.
        </pre>'
        ) # HTML
      ), #tags$div
      tags$div(class="wkp",'09/2002 ~ 06/2003'),
      tags$div(
        HTML(
          ' <pre class="wk">
            <b>Department of Microbiology, Soochow University, Taiwan</b>
            <b>Position: </b> Graduate Research Fellow
            <b>Salary range:</b> Started at $ 100/month, and Ended at $ 100/month
            <b>Project:</b> Study the impact of immunostimulant CpG DNA on the prophenoloxidase activation system of <i>Macrobrachium rosenbergii</i>.
            <b>Duties:</b>
            1.	Collecting blood cells from <i>Macrobrachium rosenbergii</i>.
            2.	Stimulating blood cells with CpG nucleotides.
            3.	Preparing protein samples for western blot and 2D-PAGE analysis.
            </pre>'
        ) # HTML
      ), #tags$div
      tags$hr(class='hl'),
      tags$br(),
      tags$div(
        tags$p(class="header", 'Publications'),
        tags$hr(class='hl'),
        tags$ol(class='refs',
                tags$li(id='ref_1','Wang Q, Wang T, Wu W,', tags$strong('Lin CY,'), 'Yang S, Yang G, Jankowska E, Hu YF, Shen RF, Betenbaugh M, Cipollo J. Comprehensive N- and O-glycoproteomic Analysis of Multiple Chinese Hamster Ovary Host Cell Lines. Journal of Proteome Research. 2022.',  
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/36129246/",'PubMed'), textOutput('IF_jpr_1',inline = TRUE)),
                tags$li('Wang Q, Wang Y, Yang S,', tags$strong('Lin CY,'),', Aliyu L, Chen Y, Parsons L, Tian Y, Jia H, Pekosz A, Betenbaugh M, Cipollo J. A Linkage-Specific Sialic Acid Labeling Strategy Reveals Different Site-Specific Glycosylation Patterns in SARS-CoV-2 Spike Protein Produced in CHO and HEK Cell Substrates. Frontiers in Chemistry. 2021.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/34631661/", 'PubMed'), textOutput('IF_fc_1',inline = TRUE)),
                tags$li('Chou FJ,', tags$strong('Lin CY*,'), 'Tian H, Lin WY, You B, Lu J, Sahasrabudhe D, Huang CP, Yang V, Yeh S, Niu Y, Chang C. Preclinical studies using cisplatin/carboplatin to restore the Enzalutamide sensitivity via degrading the androgen receptor splicing variant 7 (ARv7) to further suppress Enzalutamide resistant prostate cancer. Cell death and disease. 2020.', 
                        tags$a(href="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7606511/",'PubMed'), textOutput('IF_cdd_1',inline = TRUE),'*co-first author'),
                tags$li(tags$strong('Lin CY,'), 'Chou FJ, Lu J, Lin WY, Troung M, Tian H, Sun Y, Luo J, Yang R, Niu Y, Nadal R, Antonarakis E, Cordon-Cardo C, Sahasrabudhe D, Huang CP, Yeh S. Li G, Chang C. Preclinical studies show using enzalutamide is less effective in docetaxel-pretreated than in docetaxel-naïve prostate cancer cells. Aging. 2020.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/32920545/", 'PubMed'), textOutput('IF_aging_1',inline = TRUE)),
                tags$li('Luo J, Tian J, Chou FJ,', tags$strong('Lin CY,'), 'Xing Z, Zuo L, Niu Y, Yeh S, Chang C. Targeting the androgen receptor (AR) with AR degradation enhancer ASC-J9® led to increase docetaxel sensitivity via suppressing the p21 expression. Cancer letters. 2019 Mar 1;444:35-44.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/30248372/",'PubMed'), textOutput('IF_cl_1',inline = TRUE)),
                tags$li('Ding J, Yeh CR, Sun Y,', tags$strong('Lin CY,'), 'Chou J, Ou Z, Chang C, Qi J, Yeh S. Estrogen receptor β promotes renal cell carcinoma progression via regulating LncRNA HOTAIR-miR-138/200c/204/217 associated CeRNA network. Oncogene. 2018 Sep;37(37):5037-5053.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/29789714/",'PubMed'), textOutput('IF_oncogene_1',inline = TRUE)),
                tags$li('Wu W, Phue JN, Lee CT,', tags$strong('Lin CY,'), 'Xu L, Wang R, Zhang YQ, Shen RF. Robust Sub-Nanomolar Library Preparation for Next Generation Sequencing. BMC Genomics. 2018 May. 19:326-35.',
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/29728062/",'PubMed'), textOutput('IF_bg_1',inline = TRUE)),
                tags$li('Lin WY, Luo J, Sun Y,', tags$strong('Lin CY,'),'Li G, Niu Y and Chang C. ASC-J9® suppresses prostate cancer metastasis via altering the sumoylation-phosphorylation of STAT3. Cancer Letters. 2018 Jul 1;425:21-30.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/29425687/",'PubMed'), textOutput('IF_cl_2',inline = TRUE)),
                tags$li('Wang R, Sun Y, Li L, Niu Y, Lin WY,', tags$strong('Lin CY,'), 'Antonarakis E, Luo J, Yeh S, and Chang C. Preclinical Study using Malat1 Small Interfering RNA or Androgen Preclinical Study using Malat1 Small Interfering RNA or Androgen Suppress Enzalutamide-resistant Prostate Cancer Progression. European Urology. 2017 Nov;72(5):835-844.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/28528814/",'PubMed'), textOutput('IF_eu_1',inline = TRUE)),
                tags$li('Lin SJ, Yang DR, Yang G,', tags$strong('Lin CY,'), 'Chang HC, Li G and Chang C. TR2 and TR4 Orphan Nuclear Receptors: An Overview. Current Topics in Developmental Biology. 2017;125:357-373.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/28527578/",'PubMed'), textOutput('IF_ctdb_1',inline = TRUE)),
                tags$li('Lin SJ, Chou FJ, Li L,', tags$strong('Lin CY,'), 'Yeh S and Chang C. Natural killer cells suppress enzalutamide resistance and cell invasion in the castration resistant prostate cancer via targeting the androgen receptor splicing variant 7 (ARv7). Cancer Letters. 2017 Mar 31. pii: S0304-3835(17)30217-3.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/28373004/",'PubMed'), textOutput('IF_cl_3',inline = TRUE)),
                tags$li('Lin SJ, Li L,', tags$strong('Lin CY,'), 'Chang HC, Yeh S and Chang C. New therapy with ASC-J9® to suppress the prostatitis via altering the cytokine CCL2 Signals. Oncotarget  2016 Oct 11;7(41):66769-66775.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/27564257/", 'PubMed'), textOutput('IF_ot_1',inline = TRUE)),
                tags$li('Wang R, Lin WY,', tags$strong('Lin CY,'), 'Li L, Sun Y and Chang C. ASC-J9® suppresses castration resistant prostate cancer progression via degrading the enzalutamide-induced androgen receptor mutant AR-F876L. Cancer Letters. 2016 Aug 1 ;373(1):45-56.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/27233475/",'PubMed'), textOutput('IF_cl_4',inline = TRUE)),
                tags$li('Shi L, Lin H, Li G, Sun Y, Shen J, Xu J,', tags$strong('Lin CY,'), 'Yeh S, Cai X, Chang C. Cisplatin enhances NK cells immunotherapy efficacy to suppress HCC progression via altering the androgen receptor (AR)-ULBP2 signals. Cancer Letters. 2016 Apr 28;379(1):154-60.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/26805759/",'PubMed'), textOutput('IF_cl_5',inline = TRUE)),
                tags$li(tags$strong('Lin CY,'), 'Lin WY, Yeh S, and Chang C. Infiltrating neutrophils cells enhance bladder cancer invasion via modulation of AR-MMP13 signaling. Oncotarget. 2015 Dec 15;6(40):43081-9.',
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/26517808/",'PubMed'), textOutput('IF_ot_2',inline = TRUE)),
                tags$li('Lin SJ,', tags$strong('Lin CY,'), 'Yang DR, Izumi K, Yan E, Niu X, Chang HC, Miyamoto H, Wang N, Li G, Chang CC. The differential effects of anti-diabetic thiazoli- dinedione on prostate cancer progression are linked to the expression of TR4 nuclear receptor. Neoplasia. 2015. Apr;17(4):339-47.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/25925376/",'PubMed'), textOutput('IF_np_1',inline = TRUE)),
                tags$li(tags$strong('Lin CY,'),', Chang YC, Wang ST, Lee TY, Lin CF, Huang CC. Altered inflammatory responses in preterm children with cerebral palsy. Ann Neurol. 2010 Aug;68(2):204-12.', 
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/20695013/",'PubMed'), textOutput('IF_an_1',inline = TRUE)),
                tags$li('Wang LW, Chang YC,', tags$strong('Lin CY,'),'Hong JS, Huang CC. Low-dose lipopolysaccharide selectively sensitizes hypoxic ischemia-induced white matter injury in the immature brain. Pediatr Res. 2010 Jul;68(1):41-7.',
                        tags$a(href="https://pubmed.ncbi.nlm.nih.gov/20351655/",'PubMed'), textOutput('IF_pr_1',inline = TRUE))
                ), # tag$ol
        tags$hr(class='hl'),
        tags$p(style='text-align: initial','Retrieve Impact Factors*', uiOutput(outputId = "showIF",inline = TRUE) ), # showIF button
        tags$p(class ='note', '*Impact factors retrieved from', tags$a(href="https://www.scijournal.org/",'SCI Journal: Science Journal Impact Factor'))
              ), # tags$div ref
        downloadButton(class='btn', outputId ='downloadData', label = 'Download')
        ) # tags$div resume
      ) #navbarPage
# ================================ Resume content above =====================
      ), #tabItem
      tabItem(tabName = 'Links',
        navbarPage(title = 'Links',
                   tags$a(href='https://github.com/plague1981', 'Github')
        )
      ),
      tabItem(
        tabName = 'family_links', 
          navbarPage(title = 'Family Links')
      )
      ) #tabItems
  ) #dashboardBody
)) #ui
