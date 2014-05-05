﻿// Закоментируйте следующую строку чтобы посмотреть как ведет себя UI без использования BackgroundWorker
#define USE_BACKGROUND_WORKER

using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace BelhardTraining.PiCalc
{
    // TODO: Ability to save and resume
    // TODO: Display progress in task bar

    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void OnStartClick(object sender, EventArgs e)
        {
            progressBar.Value = 0;
            lblProgress.Visible = true;
            btnStart.Enabled = false;
            btnCancel.Visible = true;

			const int numIterations = 10000000;

			#if USE_BACKGROUND_WORKER

            backgroundWorker.RunWorkerAsync(numIterations);

			#else

            PiCalculator piCalc = new PiCalculator();
            for (int i = 0; i < 100; i++)
            {
                piCalc.Run(numIterations / 100);

				ReportProgress(piCalc.PI, i);
            }

			ReportProgress(piCalc.PI, 100);
			WorkCompleted();

#endif
		}

        private void OnCancelClick(object sender, EventArgs e)
        {
            backgroundWorker.CancelAsync();
        }

        private void OnDoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = (BackgroundWorker)sender;
            worker.ReportProgress(0);

            PiCalculator piCalc = new PiCalculator();
            int numIterations = (int)e.Argument;
            for (int i = 0; i < 100; i++)
            {
                piCalc.Run(numIterations / 100);

                worker.ReportProgress(i, piCalc.PI);
                if (worker.CancellationPending) break;
            }
            worker.ReportProgress(100, piCalc.PI);
        }

        private void OnWorkProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            ReportProgress((string)e.UserState, e.ProgressPercentage);
        }

        private void ReportProgress(string currentPi, int progressPercentage)
        {
            tbResult.Visible = true;
            tbResult.Text = currentPi;
            lblProgress.Text = String.Format("Идет вычисление PI - {0:P0}", progressPercentage / 100f);
            progressBar.Value = progressPercentage;
        }

        private void OnWorkCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
			WorkCompleted();
        }

		private void WorkCompleted()
		{
			lblProgress.Visible = false;
			btnStart.Enabled = true;
			btnCancel.Visible = false;
		}
    }
}
